#ifndef post_card_tokenization_request_customer_any_of_TEST
#define post_card_tokenization_request_customer_any_of_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_card_tokenization_request_customer_any_of_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_card_tokenization_request_customer_any_of.h"
post_card_tokenization_request_customer_any_of_t* instantiate_post_card_tokenization_request_customer_any_of(int include_optional);



post_card_tokenization_request_customer_any_of_t* instantiate_post_card_tokenization_request_customer_any_of(int include_optional) {
  post_card_tokenization_request_customer_any_of_t* post_card_tokenization_request_customer_any_of = NULL;
  if (include_optional) {
    post_card_tokenization_request_customer_any_of = post_card_tokenization_request_customer_any_of_create(
      "0"
    );
  } else {
    post_card_tokenization_request_customer_any_of = post_card_tokenization_request_customer_any_of_create(
      "0"
    );
  }

  return post_card_tokenization_request_customer_any_of;
}


#ifdef post_card_tokenization_request_customer_any_of_MAIN

void test_post_card_tokenization_request_customer_any_of(int include_optional) {
    post_card_tokenization_request_customer_any_of_t* post_card_tokenization_request_customer_any_of_1 = instantiate_post_card_tokenization_request_customer_any_of(include_optional);

	cJSON* jsonpost_card_tokenization_request_customer_any_of_1 = post_card_tokenization_request_customer_any_of_convertToJSON(post_card_tokenization_request_customer_any_of_1);
	printf("post_card_tokenization_request_customer_any_of :\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_customer_any_of_1));
	post_card_tokenization_request_customer_any_of_t* post_card_tokenization_request_customer_any_of_2 = post_card_tokenization_request_customer_any_of_parseFromJSON(jsonpost_card_tokenization_request_customer_any_of_1);
	cJSON* jsonpost_card_tokenization_request_customer_any_of_2 = post_card_tokenization_request_customer_any_of_convertToJSON(post_card_tokenization_request_customer_any_of_2);
	printf("repeating post_card_tokenization_request_customer_any_of:\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_customer_any_of_2));
}

int main() {
  test_post_card_tokenization_request_customer_any_of(1);
  test_post_card_tokenization_request_customer_any_of(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_card_tokenization_request_customer_any_of_MAIN
#endif // post_card_tokenization_request_customer_any_of_TEST
