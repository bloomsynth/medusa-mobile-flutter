import 'dart:async';
import 'dart:developer';

import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/cart/cubit/cart_state.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/region/cubit/region_state.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Owns the cart. Every mutation goes through here and stores the cart the
/// server answers, so totals, promotions and checkout steps never go stale.
///
/// The cart id persists across launches. When the region changes, the cart
/// moves to it (or is recreated when that fails).
class CartCubit extends SafeCubit<CartState> {
  CartCubit(this._client, this._prefs, RegionCubit regionCubit)
    : super(const CartState()) {
    _onRegion(regionCubit.state);
    _regionSubscription = regionCubit.stream.listen(_onRegion);
  }

  static const _key = 'cart_id';

  final MedusaClient _client;
  final SharedPreferences _prefs;
  late final StreamSubscription<RegionState> _regionSubscription;
  String? _regionId;

  void _onRegion(RegionState regionState) {
    final region = regionState.region;
    if (region == null || region.id == _regionId) return;
    _regionId = region.id;
    unawaited(_syncWithRegion(region.id));
  }

  Future<void> _syncWithRegion(String regionId) async {
    final cart = state.cart;
    if (cart != null) {
      if (cart.regionId != regionId) {
        try {
          await updateCart({'region_id': regionId});
        } on Exception catch (error) {
          log('Failed to move the cart to the region, recreating: $error');
          await resetCart();
          await _restoreOrCreate(regionId);
        }
      }
      return;
    }
    await _restoreOrCreate(regionId);
  }

  Future<void> _restoreOrCreate(String regionId) async {
    emit(state.copyWith(isLoading: true));
    try {
      final savedId = _prefs.getString(_key);
      StoreCart cart;
      if (savedId != null) {
        try {
          cart = await _client.cart.retrieve(savedId);
          if (cart.regionId != regionId) {
            cart = await _client.cart.update(cart.id, {'region_id': regionId});
          }
        } on Exception catch (error) {
          // The saved id can outlive a backend reset; start over.
          log('Saved cart unavailable, creating a new one: $error');
          cart = await _client.cart.create(regionId: regionId);
        }
      } else {
        cart = await _client.cart.create(regionId: regionId);
      }
      await _prefs.setString(_key, cart.id);
      emit(state.copyWith(cart: cart, isLoading: false));
    } on Exception catch (error) {
      log('Failed to load the cart: $error');
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> refresh() async {
    final cart = state.cart;
    if (cart == null) return;
    emit(state.copyWith(cart: await _client.cart.retrieve(cart.id)));
  }

  /// Forgets the cart; the next region sync creates a fresh one.
  Future<void> resetCart() async {
    await _prefs.remove(_key);
    emit(state.copyWith(clearCart: true));
  }

  /// Creates a cart for the current region after [resetCart], for example
  /// once an order is placed.
  Future<void> createForCurrentRegion() async {
    final regionId = _regionId;
    if (regionId == null || state.cart != null) return;
    await _restoreOrCreate(regionId);
  }

  Future<void> addToCart(String variantId, int quantity) async {
    final cart = state.cart;
    if (cart == null) return;
    try {
      emit(
        state.copyWith(
          cart: await _client.cart.createLineItem(
            cart.id,
            variantId: variantId,
            quantity: quantity,
          ),
        ),
      );
    } on Exception catch (error) {
      log('Failed to add to cart: $error');
    }
  }

  Future<void> updateLineItem(String lineItemId, int quantity) async {
    final cart = state.cart;
    if (cart == null) return;
    try {
      if (quantity <= 0) {
        await _client.cart.deleteLineItem(cart.id, lineItemId);
        await refresh();
      } else {
        emit(
          state.copyWith(
            cart: await _client.cart.updateLineItem(
              cart.id,
              lineItemId,
              quantity: quantity,
            ),
          ),
        );
      }
    } on Exception catch (error) {
      log('Failed to update line item: $error');
    }
  }

  /// Saves email, addresses or region on the cart. Throws on failure so the
  /// checkout can show the message.
  Future<StoreCart> updateCart(Map<String, dynamic> data) async {
    final cart = state.cart;
    if (cart == null) throw StateError('No cart found');
    final updated = await _client.cart.update(cart.id, data);
    emit(state.copyWith(cart: updated));
    return updated;
  }

  Future<void> linkCartToCustomer() async {
    final cart = state.cart;
    if (cart == null) return;
    emit(state.copyWith(cart: await _client.cart.transfer(cart.id)));
  }

  Future<StoreCart> setShippingMethod(String optionId) async {
    final cart = state.cart;
    if (cart == null) throw StateError('No cart found');
    final updated = await _client.cart.addShippingMethod(
      cart.id,
      optionId: optionId,
    );
    emit(state.copyWith(cart: updated));
    return updated;
  }

  /// Applies a code and reports whether the server accepted it.
  Future<bool> applyPromoCode(String code) async {
    final cart = state.cart;
    if (cart == null) throw StateError('No cart found');
    try {
      final existing = cart.promotions
          .where((p) => !p.isAutomatic && p.code != null)
          .map((p) => p.code!)
          .toList();
      final updated = await _client.cart.update(cart.id, {
        'promo_codes': [...existing, code],
      });
      emit(state.copyWith(cart: updated));
      return updated.promotions.any((p) => p.code == code);
    } on Exception {
      return false;
    }
  }

  Future<void> removePromoCode(String code) async {
    final cart = state.cart;
    if (cart == null) throw StateError('No cart found');
    final remaining = cart.promotions
        .where((p) => !p.isAutomatic && p.code != null && p.code != code)
        .map((p) => p.code!)
        .toList();
    emit(
      state.copyWith(
        cart: await _client.cart.update(cart.id, {'promo_codes': remaining}),
      ),
    );
  }

  @override
  Future<void> close() {
    _regionSubscription.cancel();
    return super.close();
  }
}
