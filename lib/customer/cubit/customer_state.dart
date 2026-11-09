import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/models/models.dart';

enum CustomerStatus { unknown, signedOut, signedIn }

class CustomerState extends Equatable {
  const CustomerState({this.status = CustomerStatus.unknown, this.customer});

  final CustomerStatus status;
  final StoreCustomer? customer;

  bool get isSignedIn => status == CustomerStatus.signedIn && customer != null;

  CustomerState copyWith({CustomerStatus? status, StoreCustomer? customer}) =>
      CustomerState(status: status ?? this.status, customer: customer);

  @override
  List<Object?> get props => [status, customer];
}
