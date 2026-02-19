import 'package:ci_cd_test/features/payment/domain/entities/payment_request.dart';
import 'package:ci_cd_test/features/payment/domain/usecases/start_payment_usecase.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  PaymentController(this._startPaymentUseCase);

  final StartPaymentUseCase _startPaymentUseCase;
  final isLoading = false.obs;
  final paymentResult = ''.obs;

  Future<void> payNow() async {
    if (isLoading.value) {
      return;
    }

    isLoading.value = true;
    paymentResult.value = '';

    try {
      const request = PaymentRequest(
        merchantId: 'YOUR_MERCHANT_ID',
        verifyKey: 'YOUR_VERIFY_KEY',
        amount: '10.00',
        orderId: 'ORDER_1001',
        description: 'Sample payment from Flutter',
        name: 'John Doe',
        email: 'john@example.com',
        phone: '60123456789',
      );

      final result = await _startPaymentUseCase.call(request);
      paymentResult.value = result.toString();
    } catch (e) {
      paymentResult.value = 'Payment failed: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
