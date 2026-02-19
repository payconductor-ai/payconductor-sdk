#ifndef nu_pay_TEST
#define nu_pay_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define nu_pay_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/nu_pay.h"
nu_pay_t* instantiate_nu_pay(int include_optional);

#include "test_nu_pay_nu_pay.c"


nu_pay_t* instantiate_nu_pay(int include_optional) {
  nu_pay_t* nu_pay = NULL;
  if (include_optional) {
    nu_pay = nu_pay_create(
      "0",
       // false, not to have infinite recursion
      instantiate_nu_pay_nu_pay(0)
    );
  } else {
    nu_pay = nu_pay_create(
      "0",
      NULL
    );
  }

  return nu_pay;
}


#ifdef nu_pay_MAIN

void test_nu_pay(int include_optional) {
    nu_pay_t* nu_pay_1 = instantiate_nu_pay(include_optional);

	cJSON* jsonnu_pay_1 = nu_pay_convertToJSON(nu_pay_1);
	printf("nu_pay :\n%s\n", cJSON_Print(jsonnu_pay_1));
	nu_pay_t* nu_pay_2 = nu_pay_parseFromJSON(jsonnu_pay_1);
	cJSON* jsonnu_pay_2 = nu_pay_convertToJSON(nu_pay_2);
	printf("repeating nu_pay:\n%s\n", cJSON_Print(jsonnu_pay_2));
}

int main() {
  test_nu_pay(1);
  test_nu_pay(0);

  printf("Hello world \n");
  return 0;
}

#endif // nu_pay_MAIN
#endif // nu_pay_TEST
