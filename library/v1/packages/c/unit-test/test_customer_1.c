#ifndef customer_1_TEST
#define customer_1_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define customer_1_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/customer_1.h"
customer_1_t* instantiate_customer_1(int include_optional);

#include "test_customer_address.c"


customer_1_t* instantiate_customer_1(int include_optional) {
  customer_1_t* customer_1 = NULL;
  if (include_optional) {
    customer_1 = customer_1_create(
       // false, not to have infinite recursion
      instantiate_customer_address(0),
      "a",
      payconductor_api_customer_1_DOCUMENTTYPE_Cpf,
      "0",
      "0",
      "a"
    );
  } else {
    customer_1 = customer_1_create(
      NULL,
      "a",
      payconductor_api_customer_1_DOCUMENTTYPE_Cpf,
      "0",
      "0",
      "a"
    );
  }

  return customer_1;
}


#ifdef customer_1_MAIN

void test_customer_1(int include_optional) {
    customer_1_t* customer_1_1 = instantiate_customer_1(include_optional);

	cJSON* jsoncustomer_1_1 = customer_1_convertToJSON(customer_1_1);
	printf("customer_1 :\n%s\n", cJSON_Print(jsoncustomer_1_1));
	customer_1_t* customer_1_2 = customer_1_parseFromJSON(jsoncustomer_1_1);
	cJSON* jsoncustomer_1_2 = customer_1_convertToJSON(customer_1_2);
	printf("repeating customer_1:\n%s\n", cJSON_Print(jsoncustomer_1_2));
}

int main() {
  test_customer_1(1);
  test_customer_1(0);

  printf("Hello world \n");
  return 0;
}

#endif // customer_1_MAIN
#endif // customer_1_TEST
