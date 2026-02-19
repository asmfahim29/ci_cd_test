import 'package:ci_cd_test/features/payment/presentation/controllers/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends GetView<PaymentController> {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fiuu Payment Gateway')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: controller.isLoading.value
                        ? null
                        : controller.payNow,
                    child: controller.isLoading.value
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Pay with Fiuu'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Text(
                  controller.paymentResult.value.isEmpty
                      ? 'Tap the button to start payment flow.'
                      : controller.paymentResult.value,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
