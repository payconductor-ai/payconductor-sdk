#ifndef bank_slip_expiration_in_days_TEST
#define bank_slip_expiration_in_days_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define bank_slip_expiration_in_days_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/bank_slip_expiration_in_days.h"
bank_slip_expiration_in_days_t* instantiate_bank_slip_expiration_in_days(int include_optional);



bank_slip_expiration_in_days_t* instantiate_bank_slip_expiration_in_days(int include_optional) {
  bank_slip_expiration_in_days_t* bank_slip_expiration_in_days = NULL;
  if (include_optional) {
    bank_slip_expiration_in_days = bank_slip_expiration_in_days_create(
    );
  } else {
    bank_slip_expiration_in_days = bank_slip_expiration_in_days_create(
    );
  }

  return bank_slip_expiration_in_days;
}


#ifdef bank_slip_expiration_in_days_MAIN

void test_bank_slip_expiration_in_days(int include_optional) {
    bank_slip_expiration_in_days_t* bank_slip_expiration_in_days_1 = instantiate_bank_slip_expiration_in_days(include_optional);

	cJSON* jsonbank_slip_expiration_in_days_1 = bank_slip_expiration_in_days_convertToJSON(bank_slip_expiration_in_days_1);
	printf("bank_slip_expiration_in_days :\n%s\n", cJSON_Print(jsonbank_slip_expiration_in_days_1));
	bank_slip_expiration_in_days_t* bank_slip_expiration_in_days_2 = bank_slip_expiration_in_days_parseFromJSON(jsonbank_slip_expiration_in_days_1);
	cJSON* jsonbank_slip_expiration_in_days_2 = bank_slip_expiration_in_days_convertToJSON(bank_slip_expiration_in_days_2);
	printf("repeating bank_slip_expiration_in_days:\n%s\n", cJSON_Print(jsonbank_slip_expiration_in_days_2));
}

int main() {
  test_bank_slip_expiration_in_days(1);
  test_bank_slip_expiration_in_days(0);

  printf("Hello world \n");
  return 0;
}

#endif // bank_slip_expiration_in_days_MAIN
#endif // bank_slip_expiration_in_days_TEST
