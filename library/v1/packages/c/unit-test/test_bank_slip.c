#ifndef bank_slip_TEST
#define bank_slip_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define bank_slip_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/bank_slip.h"
bank_slip_t* instantiate_bank_slip(int include_optional);

#include "test_bank_slip_expiration_in_days.c"


bank_slip_t* instantiate_bank_slip(int include_optional) {
  bank_slip_t* bank_slip = NULL;
  if (include_optional) {
    bank_slip = bank_slip_create(
      payconductor_api_bank_slip__Pix,
      null
    );
  } else {
    bank_slip = bank_slip_create(
      payconductor_api_bank_slip__Pix,
      null
    );
  }

  return bank_slip;
}


#ifdef bank_slip_MAIN

void test_bank_slip(int include_optional) {
    bank_slip_t* bank_slip_1 = instantiate_bank_slip(include_optional);

	cJSON* jsonbank_slip_1 = bank_slip_convertToJSON(bank_slip_1);
	printf("bank_slip :\n%s\n", cJSON_Print(jsonbank_slip_1));
	bank_slip_t* bank_slip_2 = bank_slip_parseFromJSON(jsonbank_slip_1);
	cJSON* jsonbank_slip_2 = bank_slip_convertToJSON(bank_slip_2);
	printf("repeating bank_slip:\n%s\n", cJSON_Print(jsonbank_slip_2));
}

int main() {
  test_bank_slip(1);
  test_bank_slip(0);

  printf("Hello world \n");
  return 0;
}

#endif // bank_slip_MAIN
#endif // bank_slip_TEST
