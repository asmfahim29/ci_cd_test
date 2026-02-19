import 'package:ci_cd_test/features/payment/domain/entities/payment_request.dart';
import 'package:fiuu_mobile_xdk_flutter/fiuu_mobile_xdk_flutter.dart';

class FiuuPaymentDataSource {
  Future<dynamic> startPayment(PaymentRequest request) {
    final paymentDetails = {
      'mp_username': request.merchantId,
      'mp_password': request.verifyKey,
      'mp_merchant_ID': request.merchantId,
      'mp_app_name': 'ci_cd_test',
      'mp_verification_key': request.verifyKey,
      'mp_amount': request.amount,
      'mp_order_ID': request.orderId,
      'mp_currency': 'MYR',
      'mp_country': 'MY',
      'mp_channel': 'multi',
      'mp_bill_description': request.description,
      'mp_bill_name': request.name,
      'mp_bill_email': request.email,
      'mp_bill_mobile': request.phone,
      'mp_vcode': '',
      'mp_dev_mode': true,
    };

    return MobileXDK.start(paymentDetails);
  }
}
