import 'package:ci_cd_test/features/payment/domain/entities/payment_request.dart';
import 'package:ci_cd_test/features/payment/domain/repositories/payment_repository.dart';

class StartPaymentUseCase {
  const StartPaymentUseCase(this._repository);

  final PaymentRepository _repository;

  Future<dynamic> call(PaymentRequest request) {
    return _repository.startPayment(request);
  }
}
