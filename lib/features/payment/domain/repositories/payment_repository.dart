import 'package:ci_cd_test/features/payment/domain/entities/payment_request.dart';

abstract class PaymentRepository {
  Future<dynamic> startPayment(PaymentRequest request);
}
