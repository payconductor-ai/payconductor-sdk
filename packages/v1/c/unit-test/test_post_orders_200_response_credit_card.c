#ifndef post_orders_200_response_credit_card_TEST
#define post_orders_200_response_credit_card_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_credit_card_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response_credit_card.h"
post_orders_200_response_credit_card_t* instantiate_post_orders_200_response_credit_card(int include_optional);



post_orders_200_response_credit_card_t* instantiate_post_orders_200_response_credit_card(int include_optional) {
  post_orders_200_response_credit_card_t* post_orders_200_response_credit_card = NULL;
  if (include_optional) {
    post_orders_200_response_credit_card = post_orders_200_response_credit_card_create(
      "0"
    );
  } else {
    post_orders_200_response_credit_card = post_orders_200_response_credit_card_create(
      "0"
    );
  }

  return post_orders_200_response_credit_card;
}


#ifdef post_orders_200_response_credit_card_MAIN

void test_post_orders_200_response_credit_card(int include_optional) {
    post_orders_200_response_credit_card_t* post_orders_200_response_credit_card_1 = instantiate_post_orders_200_response_credit_card(include_optional);

	cJSON* jsonpost_orders_200_response_credit_card_1 = post_orders_200_response_credit_card_convertToJSON(post_orders_200_response_credit_card_1);
	printf("post_orders_200_response_credit_card :\n%s\n", cJSON_Print(jsonpost_orders_200_response_credit_card_1));
	post_orders_200_response_credit_card_t* post_orders_200_response_credit_card_2 = post_orders_200_response_credit_card_parseFromJSON(jsonpost_orders_200_response_credit_card_1);
	cJSON* jsonpost_orders_200_response_credit_card_2 = post_orders_200_response_credit_card_convertToJSON(post_orders_200_response_credit_card_2);
	printf("repeating post_orders_200_response_credit_card:\n%s\n", cJSON_Print(jsonpost_orders_200_response_credit_card_2));
}

int main() {
  test_post_orders_200_response_credit_card(1);
  test_post_orders_200_response_credit_card(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_credit_card_MAIN
#endif // post_orders_200_response_credit_card_TEST
