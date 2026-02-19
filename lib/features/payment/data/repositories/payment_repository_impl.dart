import 'package:ci_cd_test/features/payment/data/datasources/fiuu_payment_data_source.dart';
import 'package:ci_cd_test/features/payment/domain/entities/payment_request.dart';
import 'package:ci_cd_test/features/payment/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._dataSource);

  final FiuuPaymentDataSource _dataSource;

  @override
  Future<dynamic> startPayment(PaymentRequest request) {
    return _dataSource.startPayment(request);
  }
}
