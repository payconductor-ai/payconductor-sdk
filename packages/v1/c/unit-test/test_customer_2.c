#ifndef customer_2_TEST
#define customer_2_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define customer_2_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/customer_2.h"
customer_2_t* instantiate_customer_2(int include_optional);

#include "test_customer_address.c"
#include "test_customer_2_document_type.c"


customer_2_t* instantiate_customer_2(int include_optional) {
  customer_2_t* customer_2 = NULL;
  if (include_optional) {
    customer_2 = customer_2_create(
       // false, not to have infinite recursion
      instantiate_customer_address(0),
      "a",
      null,
      "0",
      "0",
      "a"
    );
  } else {
    customer_2 = customer_2_create(
      NULL,
      "a",
      null,
      "0",
      "0",
      "a"
    );
  }

  return customer_2;
}


#ifdef customer_2_MAIN

void test_customer_2(int include_optional) {
    customer_2_t* customer_2_1 = instantiate_customer_2(include_optional);

	cJSON* jsoncustomer_2_1 = customer_2_convertToJSON(customer_2_1);
	printf("customer_2 :\n%s\n", cJSON_Print(jsoncustomer_2_1));
	customer_2_t* customer_2_2 = customer_2_parseFromJSON(jsoncustomer_2_1);
	cJSON* jsoncustomer_2_2 = customer_2_convertToJSON(customer_2_2);
	printf("repeating customer_2:\n%s\n", cJSON_Print(jsoncustomer_2_2));
}

int main() {
  test_customer_2(1);
  test_customer_2(0);

  printf("Hello world \n");
  return 0;
}

#endif // customer_2_MAIN
#endif // customer_2_TEST
