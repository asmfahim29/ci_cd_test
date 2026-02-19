class PaymentRequest {
  const PaymentRequest({
    required this.merchantId,
    required this.verifyKey,
    required this.amount,
    required this.orderId,
    required this.description,
    required this.name,
    required this.email,
    required this.phone,
  });

  final String merchantId;
  final String verifyKey;
  final String amount;
  final String orderId;
  final String description;
  final String name;
  final String email;
  final String phone;
}
