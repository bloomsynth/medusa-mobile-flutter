import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/models/models.dart';

class CartState extends Equatable {
  const CartState({this.cart, this.isLoading = false});

  /// The server cart, replaced wholesale after every mutation.
  final StoreCart? cart;
  final bool isLoading;

  int get itemCount => cart?.itemCount ?? 0;

  bool get isEmpty => cart == null || cart!.isEmpty;

  CartState copyWith({
    StoreCart? cart,
    bool? isLoading,
    bool clearCart = false,
  }) => CartState(
    cart: clearCart ? null : (cart ?? this.cart),
    isLoading: isLoading ?? this.isLoading,
  );

  @override
  List<Object?> get props => [cart, isLoading];
}
