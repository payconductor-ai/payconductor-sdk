import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CustomersApi
void main() {
  final instance = Openapi().getCustomersApi();

  group(CustomersApi, () {
    //Future deleteCustomersById(String id) async
    test('test deleteCustomersById', () async {
      // TODO
    });

    //Future getCustomers(num page, num pageSize, String period, { String email, String name, DateTime endDate, DateTime startDate }) async
    test('test getCustomers', () async {
      // TODO
    });

    //Future getCustomersById(String id) async
    test('test getCustomersById', () async {
      // TODO
    });

    //Future patchCustomersById(String id, Customer1 customer1) async
    test('test patchCustomersById', () async {
      // TODO
    });

    //Future postCustomers(Customer customer) async
    test('test postCustomers', () async {
      // TODO
    });

  });
}
