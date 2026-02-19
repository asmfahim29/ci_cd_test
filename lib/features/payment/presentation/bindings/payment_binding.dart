import 'package:ci_cd_test/features/payment/data/datasources/fiuu_payment_data_source.dart';
import 'package:ci_cd_test/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:ci_cd_test/features/payment/domain/usecases/start_payment_usecase.dart';
import 'package:ci_cd_test/features/payment/presentation/controllers/payment_controller.dart';
import 'package:get/get.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiuuPaymentDataSource>(FiuuPaymentDataSource.new);
    Get.lazyPut<PaymentRepositoryImpl>(
      () => PaymentRepositoryImpl(Get.find<FiuuPaymentDataSource>()),
    );
    Get.lazyPut<StartPaymentUseCase>(
      () => StartPaymentUseCase(Get.find<PaymentRepositoryImpl>()),
    );
    Get.lazyPut<PaymentController>(
      () => PaymentController(Get.find<StartPaymentUseCase>()),
    );
  }
}
