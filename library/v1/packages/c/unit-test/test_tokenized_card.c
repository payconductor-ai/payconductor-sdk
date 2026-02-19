#ifndef tokenized_card_TEST
#define tokenized_card_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define tokenized_card_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/tokenized_card.h"
tokenized_card_t* instantiate_tokenized_card(int include_optional);



tokenized_card_t* instantiate_tokenized_card(int include_optional) {
  tokenized_card_t* tokenized_card = NULL;
  if (include_optional) {
    tokenized_card = tokenized_card_create(
      "0",
      "0"
    );
  } else {
    tokenized_card = tokenized_card_create(
      "0",
      "0"
    );
  }

  return tokenized_card;
}


#ifdef tokenized_card_MAIN

void test_tokenized_card(int include_optional) {
    tokenized_card_t* tokenized_card_1 = instantiate_tokenized_card(include_optional);

	cJSON* jsontokenized_card_1 = tokenized_card_convertToJSON(tokenized_card_1);
	printf("tokenized_card :\n%s\n", cJSON_Print(jsontokenized_card_1));
	tokenized_card_t* tokenized_card_2 = tokenized_card_parseFromJSON(jsontokenized_card_1);
	cJSON* jsontokenized_card_2 = tokenized_card_convertToJSON(tokenized_card_2);
	printf("repeating tokenized_card:\n%s\n", cJSON_Print(jsontokenized_card_2));
}

int main() {
  test_tokenized_card(1);
  test_tokenized_card(0);

  printf("Hello world \n");
  return 0;
}

#endif // tokenized_card_MAIN
#endif // tokenized_card_TEST
