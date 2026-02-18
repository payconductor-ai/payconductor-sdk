#ifndef credit_card_TEST
#define credit_card_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define credit_card_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/credit_card.h"
credit_card_t* instantiate_credit_card(int include_optional);

#include "test_credit_card_card.c"
#include "test_credit_card_installments.c"


credit_card_t* instantiate_credit_card(int include_optional) {
  credit_card_t* credit_card = NULL;
  if (include_optional) {
    credit_card = credit_card_create(
      "0",
      null,
      null,
      "0"
    );
  } else {
    credit_card = credit_card_create(
      "0",
      null,
      null,
      "0"
    );
  }

  return credit_card;
}


#ifdef credit_card_MAIN

void test_credit_card(int include_optional) {
    credit_card_t* credit_card_1 = instantiate_credit_card(include_optional);

	cJSON* jsoncredit_card_1 = credit_card_convertToJSON(credit_card_1);
	printf("credit_card :\n%s\n", cJSON_Print(jsoncredit_card_1));
	credit_card_t* credit_card_2 = credit_card_parseFromJSON(jsoncredit_card_1);
	cJSON* jsoncredit_card_2 = credit_card_convertToJSON(credit_card_2);
	printf("repeating credit_card:\n%s\n", cJSON_Print(jsoncredit_card_2));
}

int main() {
  test_credit_card(1);
  test_credit_card(0);

  printf("Hello world \n");
  return 0;
}

#endif // credit_card_MAIN
#endif // credit_card_TEST
