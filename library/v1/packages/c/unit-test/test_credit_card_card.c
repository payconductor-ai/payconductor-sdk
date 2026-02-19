#ifndef credit_card_card_TEST
#define credit_card_card_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define credit_card_card_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/credit_card_card.h"
credit_card_card_t* instantiate_credit_card_card(int include_optional);

#include "test_complete_card_data_expiration.c"


credit_card_card_t* instantiate_credit_card_card(int include_optional) {
  credit_card_card_t* credit_card_card = NULL;
  if (include_optional) {
    credit_card_card = credit_card_card_create(
      "0",
      "0",
      "012",
       // false, not to have infinite recursion
      instantiate_complete_card_data_expiration(0),
      "0",
      "0"
    );
  } else {
    credit_card_card = credit_card_card_create(
      "0",
      "0",
      "012",
      NULL,
      "0",
      "0"
    );
  }

  return credit_card_card;
}


#ifdef credit_card_card_MAIN

void test_credit_card_card(int include_optional) {
    credit_card_card_t* credit_card_card_1 = instantiate_credit_card_card(include_optional);

	cJSON* jsoncredit_card_card_1 = credit_card_card_convertToJSON(credit_card_card_1);
	printf("credit_card_card :\n%s\n", cJSON_Print(jsoncredit_card_card_1));
	credit_card_card_t* credit_card_card_2 = credit_card_card_parseFromJSON(jsoncredit_card_card_1);
	cJSON* jsoncredit_card_card_2 = credit_card_card_convertToJSON(credit_card_card_2);
	printf("repeating credit_card_card:\n%s\n", cJSON_Print(jsoncredit_card_card_2));
}

int main() {
  test_credit_card_card(1);
  test_credit_card_card(0);

  printf("Hello world \n");
  return 0;
}

#endif // credit_card_card_MAIN
#endif // credit_card_card_TEST
