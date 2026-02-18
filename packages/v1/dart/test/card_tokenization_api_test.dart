import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CardTokenizationApi
void main() {
  final instance = Openapi().getCardTokenizationApi();

  group(CardTokenizationApi, () {
    // Tokenize card
    //
    // Tokenize credit cards for future charges.
    //
    //Future<PostCardTokenization200Response> postCardTokenization(PostCardTokenizationRequest postCardTokenizationRequest) async
    test('test postCardTokenization', () async {
      // TODO
    });

  });
}
