import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderApi
void main() {
  final instance = Openapi().getOrderApi();

  group(OrderApi, () {
    // List orders
    //
    // Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
    //
    //Future getOrders(String period, num page, num pageSize, { DateTime endDate, DateTime startDate, String id, String status }) async
    test('test getOrders', () async {
      // TODO
    });

    // Get order by ID
    //
    // Retrieve the complete data of an order by our ID
    //
    //Future getOrdersById(String id) async
    test('test getOrdersById', () async {
      // TODO
    });

    // Create order
    //
    // Create a new order for payment using the provided data
    //
    //Future<PostOrders200Response> postOrders(PostOrdersRequest postOrdersRequest) async
    test('test postOrders', () async {
      // TODO
    });

    // Refund order
    //
    // Initiate a refund for the order specified by ID.
    //
    //Future postOrdersByIdRefund(String id) async
    test('test postOrdersByIdRefund', () async {
      // TODO
    });

  });
}
