import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TransfersApi
void main() {
  final instance = Openapi().getTransfersApi();

  group(TransfersApi, () {
    // List withdrawals
    //
    // Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
    //
    //Future getWithdraws(num page, num pageSize, { DateTime endDate, DateTime startDate, String id }) async
    test('test getWithdraws', () async {
      // TODO
    });

    // Get withdrawal by ID
    //
    // Returns the details of a specific withdrawal or transfer using its ID
    //
    //Future getWithdrawsById(String id) async
    test('test getWithdrawsById', () async {
      // TODO
    });

    // Create withdrawal
    //
    // Create a new withdrawal or transfer to the provided payment account
    //
    //Future<PostWithdraws200Response> postWithdraws(PostWithdrawsRequest postWithdrawsRequest) async
    test('test postWithdraws', () async {
      // TODO
    });

  });
}
