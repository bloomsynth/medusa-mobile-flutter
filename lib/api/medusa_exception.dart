import 'package:dio/dio.dart';

/// An error answered by the Medusa Store API, or a transport failure.
class MedusaException implements Exception {
  const MedusaException(this.message, {this.statusCode, this.type});

  /// Builds the exception from a failed Dio call, keeping Medusa's message.
  factory MedusaException.fromDio(DioException error) {
    final data = error.response?.data;
    String? message;
    String? type;
    if (data is Map<String, dynamic>) {
      message = data['message'] as String?;
      type = data['type'] as String?;
    }
    return MedusaException(
      message ?? error.message ?? 'Request failed',
      statusCode: error.response?.statusCode,
      type: type,
    );
  }

  final String message;
  final int? statusCode;

  /// Medusa's error type, such as `not_found` or `unauthorized`.
  final String? type;

  bool get isUnauthorized => statusCode == 401;

  @override
  String toString() => message;
}
