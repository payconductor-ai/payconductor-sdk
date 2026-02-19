#ifndef credit_card_installments_TEST
#define credit_card_installments_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define credit_card_installments_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/credit_card_installments.h"
credit_card_installments_t* instantiate_credit_card_installments(int include_optional);



credit_card_installments_t* instantiate_credit_card_installments(int include_optional) {
  credit_card_installments_t* credit_card_installments = NULL;
  if (include_optional) {
    credit_card_installments = credit_card_installments_create(
    );
  } else {
    credit_card_installments = credit_card_installments_create(
    );
  }

  return credit_card_installments;
}


#ifdef credit_card_installments_MAIN

void test_credit_card_installments(int include_optional) {
    credit_card_installments_t* credit_card_installments_1 = instantiate_credit_card_installments(include_optional);

	cJSON* jsoncredit_card_installments_1 = credit_card_installments_convertToJSON(credit_card_installments_1);
	printf("credit_card_installments :\n%s\n", cJSON_Print(jsoncredit_card_installments_1));
	credit_card_installments_t* credit_card_installments_2 = credit_card_installments_parseFromJSON(jsoncredit_card_installments_1);
	cJSON* jsoncredit_card_installments_2 = credit_card_installments_convertToJSON(credit_card_installments_2);
	printf("repeating credit_card_installments:\n%s\n", cJSON_Print(jsoncredit_card_installments_2));
}

int main() {
  test_credit_card_installments(1);
  test_credit_card_installments(0);

  printf("Hello world \n");
  return 0;
}

#endif // credit_card_installments_MAIN
#endif // credit_card_installments_TEST
