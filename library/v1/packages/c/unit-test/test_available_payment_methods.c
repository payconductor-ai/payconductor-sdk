#ifndef available_payment_methods_TEST
#define available_payment_methods_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define available_payment_methods_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/available_payment_methods.h"
available_payment_methods_t* instantiate_available_payment_methods(int include_optional);



available_payment_methods_t* instantiate_available_payment_methods(int include_optional) {
  available_payment_methods_t* available_payment_methods = NULL;
  if (include_optional) {
    available_payment_methods = available_payment_methods_create(
    );
  } else {
    available_payment_methods = available_payment_methods_create(
    );
  }

  return available_payment_methods;
}


#ifdef available_payment_methods_MAIN

void test_available_payment_methods(int include_optional) {
    available_payment_methods_t* available_payment_methods_1 = instantiate_available_payment_methods(include_optional);

	cJSON* jsonavailable_payment_methods_1 = available_payment_methods_convertToJSON(available_payment_methods_1);
	printf("available_payment_methods :\n%s\n", cJSON_Print(jsonavailable_payment_methods_1));
	available_payment_methods_t* available_payment_methods_2 = available_payment_methods_parseFromJSON(jsonavailable_payment_methods_1);
	cJSON* jsonavailable_payment_methods_2 = available_payment_methods_convertToJSON(available_payment_methods_2);
	printf("repeating available_payment_methods:\n%s\n", cJSON_Print(jsonavailable_payment_methods_2));
}

int main() {
  test_available_payment_methods(1);
  test_available_payment_methods(0);

  printf("Hello world \n");
  return 0;
}

#endif // available_payment_methods_MAIN
#endif // available_payment_methods_TEST
