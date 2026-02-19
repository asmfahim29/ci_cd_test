import 'package:ci_cd_test/features/payment/presentation/bindings/payment_binding.dart';
import 'package:ci_cd_test/features/payment/presentation/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fiuu Payment',
      debugShowCheckedModeBanner: false,
      initialBinding: PaymentBinding(),
      home: const PaymentPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
