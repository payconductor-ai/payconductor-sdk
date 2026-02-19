#ifndef customer_2_document_type_TEST
#define customer_2_document_type_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define customer_2_document_type_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/customer_2_document_type.h"
customer_2_document_type_t* instantiate_customer_2_document_type(int include_optional);



customer_2_document_type_t* instantiate_customer_2_document_type(int include_optional) {
  customer_2_document_type_t* customer_2_document_type = NULL;
  if (include_optional) {
    customer_2_document_type = customer_2_document_type_create(
    );
  } else {
    customer_2_document_type = customer_2_document_type_create(
    );
  }

  return customer_2_document_type;
}


#ifdef customer_2_document_type_MAIN

void test_customer_2_document_type(int include_optional) {
    customer_2_document_type_t* customer_2_document_type_1 = instantiate_customer_2_document_type(include_optional);

	cJSON* jsoncustomer_2_document_type_1 = customer_2_document_type_convertToJSON(customer_2_document_type_1);
	printf("customer_2_document_type :\n%s\n", cJSON_Print(jsoncustomer_2_document_type_1));
	customer_2_document_type_t* customer_2_document_type_2 = customer_2_document_type_parseFromJSON(jsoncustomer_2_document_type_1);
	cJSON* jsoncustomer_2_document_type_2 = customer_2_document_type_convertToJSON(customer_2_document_type_2);
	printf("repeating customer_2_document_type:\n%s\n", cJSON_Print(jsoncustomer_2_document_type_2));
}

int main() {
  test_customer_2_document_type(1);
  test_customer_2_document_type(0);

  printf("Hello world \n");
  return 0;
}

#endif // customer_2_document_type_MAIN
#endif // customer_2_document_type_TEST
