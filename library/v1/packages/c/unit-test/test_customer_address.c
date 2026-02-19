#ifndef customer_address_TEST
#define customer_address_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define customer_address_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/customer_address.h"
customer_address_t* instantiate_customer_address(int include_optional);



customer_address_t* instantiate_customer_address(int include_optional) {
  customer_address_t* customer_address = NULL;
  if (include_optional) {
    customer_address = customer_address_create(
      "0",
      "BR",
      "0",
      "0",
      "01",
      "0",
      "0"
    );
  } else {
    customer_address = customer_address_create(
      "0",
      "BR",
      "0",
      "0",
      "01",
      "0",
      "0"
    );
  }

  return customer_address;
}


#ifdef customer_address_MAIN

void test_customer_address(int include_optional) {
    customer_address_t* customer_address_1 = instantiate_customer_address(include_optional);

	cJSON* jsoncustomer_address_1 = customer_address_convertToJSON(customer_address_1);
	printf("customer_address :\n%s\n", cJSON_Print(jsoncustomer_address_1));
	customer_address_t* customer_address_2 = customer_address_parseFromJSON(jsoncustomer_address_1);
	cJSON* jsoncustomer_address_2 = customer_address_convertToJSON(customer_address_2);
	printf("repeating customer_address:\n%s\n", cJSON_Print(jsoncustomer_address_2));
}

int main() {
  test_customer_address(1);
  test_customer_address(0);

  printf("Hello world \n");
  return 0;
}

#endif // customer_address_MAIN
#endif // customer_address_TEST
