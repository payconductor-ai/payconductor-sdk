#ifndef merchant_input_TEST
#define merchant_input_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define merchant_input_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/merchant_input.h"
merchant_input_t* instantiate_merchant_input(int include_optional);



merchant_input_t* instantiate_merchant_input(int include_optional) {
  merchant_input_t* merchant_input = NULL;
  if (include_optional) {
    merchant_input = merchant_input_create(
      "a",
      "0",
      "01"
    );
  } else {
    merchant_input = merchant_input_create(
      "a",
      "0",
      "01"
    );
  }

  return merchant_input;
}


#ifdef merchant_input_MAIN

void test_merchant_input(int include_optional) {
    merchant_input_t* merchant_input_1 = instantiate_merchant_input(include_optional);

	cJSON* jsonmerchant_input_1 = merchant_input_convertToJSON(merchant_input_1);
	printf("merchant_input :\n%s\n", cJSON_Print(jsonmerchant_input_1));
	merchant_input_t* merchant_input_2 = merchant_input_parseFromJSON(jsonmerchant_input_1);
	cJSON* jsonmerchant_input_2 = merchant_input_convertToJSON(merchant_input_2);
	printf("repeating merchant_input:\n%s\n", cJSON_Print(jsonmerchant_input_2));
}

int main() {
  test_merchant_input(1);
  test_merchant_input(0);

  printf("Hello world \n");
  return 0;
}

#endif // merchant_input_MAIN
#endif // merchant_input_TEST
