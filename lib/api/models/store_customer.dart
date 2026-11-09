import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_customer.freezed.dart';
part 'store_customer.g.dart';

@freezed
abstract class StoreCustomer with _$StoreCustomer {
  const factory StoreCustomer({
    required String id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
  }) = _StoreCustomer;

  const StoreCustomer._();

  factory StoreCustomer.fromJson(Map<String, dynamic> json) =>
      _$StoreCustomerFromJson(json);

  String get fullName =>
      [firstName, lastName].where((p) => p != null && p.isNotEmpty).join(' ');
}
