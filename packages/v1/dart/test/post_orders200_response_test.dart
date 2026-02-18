import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for PostOrders200Response
void main() {
  final instance = PostOrders200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(PostOrders200Response, () {
    // Order ID in the system
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // External order ID (provided by your integration)
    // String externalId
    test('to test the property `externalId`', () async {
      // TODO
    });

    // Provider used to process the order
    // String externalIntegrationKey
    test('to test the property `externalIntegrationKey`', () async {
      // TODO
    });

    // Order ID in the payment provider
    // String externalIntegrationId
    test('to test the property `externalIntegrationId`', () async {
      // TODO
    });

    // Total order amount
    // num amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Cost fee applied to the order
    // num costFee
    test('to test the property `costFee`', () async {
      // TODO
    });

    // PostOrders200ResponsePix pix
    test('to test the property `pix`', () async {
      // TODO
    });

    // PostOrders200ResponseBankSlip bankSlip
    test('to test the property `bankSlip`', () async {
      // TODO
    });

    // PostOrders200ResponseNuPay nuPay
    test('to test the property `nuPay`', () async {
      // TODO
    });

    // PostOrders200ResponsePicPay picPay
    test('to test the property `picPay`', () async {
      // TODO
    });

    // PostOrders200ResponseCreditCard creditCard
    test('to test the property `creditCard`', () async {
      // TODO
    });

    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // String paymentMethod
    test('to test the property `paymentMethod`', () async {
      // TODO
    });

    // Date and time when the order was paid (ISO 8601)
    // String payedAt
    test('to test the property `payedAt`', () async {
      // TODO
    });

    // Error code, if any
    // String errorCode
    test('to test the property `errorCode`', () async {
      // TODO
    });

    // Error message, if any
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // BuiltList<PostOrders200ResponseOrderItemsInner> orderItems
    test('to test the property `orderItems`', () async {
      // TODO
    });

    // PostOrders200ResponseSession session
    test('to test the property `session`', () async {
      // TODO
    });

  });
}
