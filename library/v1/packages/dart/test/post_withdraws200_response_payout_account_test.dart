import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for PostWithdraws200ResponsePayoutAccount
void main() {
  final instance = PostWithdraws200ResponsePayoutAccountBuilder();
  // TODO add properties to the builder and call build()

  group(PostWithdraws200ResponsePayoutAccount, () {
    // Unique payment account identifier
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Account holder document (CPF or CNPJ)
    // String ownerDocument
    test('to test the property `ownerDocument`', () async {
      // TODO
    });

    // Account holder name
    // String ownerName
    test('to test the property `ownerName`', () async {
      // TODO
    });

    // PIX key used for the withdrawal
    // String pixKey
    test('to test the property `pixKey`', () async {
      // TODO
    });

    // PIX key type
    // String pixType (default value: 'Cpf')
    test('to test the property `pixType`', () async {
      // TODO
    });

  });
}
