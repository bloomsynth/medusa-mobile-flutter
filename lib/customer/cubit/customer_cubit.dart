import 'dart:developer';

import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/cart/cubit/cart_cubit.dart';
import 'package:medusa_mobile/customer/cubit/customer_state.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';

/// The signed-in customer. Signing in moves the guest cart to the account;
/// signing out forgets the cart.
class CustomerCubit extends SafeCubit<CustomerState> {
  CustomerCubit(this._client, this._cartCubit) : super(const CustomerState());

  final MedusaClient _client;
  final CartCubit _cartCubit;

  /// Checks for a saved session on launch.
  Future<void> refresh() async {
    try {
      final customer = await _client.customer.retrieve();
      emit(CustomerState(status: CustomerStatus.signedIn, customer: customer));
    } on Exception {
      emit(const CustomerState(status: CustomerStatus.signedOut));
    }
  }

  Future<void> login(String email, String password) async {
    await _client.auth.login(email: email, password: password);
    await Future.wait([refresh(), _linkCart()]);
  }

  /// The sign-in already succeeded; a cart that cannot be moved (for example
  /// one that belongs to another customer) must not report it as failed.
  Future<void> _linkCart() async {
    try {
      await _cartCubit.linkCartToCustomer();
    } on Exception catch (error) {
      log('Failed to move the cart to the customer: $error');
    }
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    await _client.auth.register(email: email, password: password);
    await _client.customer.create(
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
    // The registration token only authorizes creating the customer; sign in
    // for a customer-scoped token, as the JS SDK storefront does.
    await login(email, password);
  }

  Future<void> logout() async {
    await _client.auth.logout();
    await _cartCubit.resetCart();
    emit(const CustomerState(status: CustomerStatus.signedOut));
    await _cartCubit.createForCurrentRegion();
  }

  Future<void> update(Map<String, dynamic> data) async {
    final customer = await _client.customer.update(data);
    emit(CustomerState(status: CustomerStatus.signedIn, customer: customer));
  }
}
