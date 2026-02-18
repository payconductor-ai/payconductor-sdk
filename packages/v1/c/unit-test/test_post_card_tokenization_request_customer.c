#ifndef post_card_tokenization_request_customer_TEST
#define post_card_tokenization_request_customer_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_card_tokenization_request_customer_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_card_tokenization_request_customer.h"
post_card_tokenization_request_customer_t* instantiate_post_card_tokenization_request_customer(int include_optional);

#include "test_customer_address.c"
#include "test_customer_2_document_type.c"


post_card_tokenization_request_customer_t* instantiate_post_card_tokenization_request_customer(int include_optional) {
  post_card_tokenization_request_customer_t* post_card_tokenization_request_customer = NULL;
  if (include_optional) {
    post_card_tokenization_request_customer = post_card_tokenization_request_customer_create(
       // false, not to have infinite recursion
      instantiate_customer_address(0),
      "a",
      null,
      "0",
      "0",
      "a",
      "0"
    );
  } else {
    post_card_tokenization_request_customer = post_card_tokenization_request_customer_create(
      NULL,
      "a",
      null,
      "0",
      "0",
      "a",
      "0"
    );
  }

  return post_card_tokenization_request_customer;
}


#ifdef post_card_tokenization_request_customer_MAIN

void test_post_card_tokenization_request_customer(int include_optional) {
    post_card_tokenization_request_customer_t* post_card_tokenization_request_customer_1 = instantiate_post_card_tokenization_request_customer(include_optional);

	cJSON* jsonpost_card_tokenization_request_customer_1 = post_card_tokenization_request_customer_convertToJSON(post_card_tokenization_request_customer_1);
	printf("post_card_tokenization_request_customer :\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_customer_1));
	post_card_tokenization_request_customer_t* post_card_tokenization_request_customer_2 = post_card_tokenization_request_customer_parseFromJSON(jsonpost_card_tokenization_request_customer_1);
	cJSON* jsonpost_card_tokenization_request_customer_2 = post_card_tokenization_request_customer_convertToJSON(post_card_tokenization_request_customer_2);
	printf("repeating post_card_tokenization_request_customer:\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_customer_2));
}

int main() {
  test_post_card_tokenization_request_customer(1);
  test_post_card_tokenization_request_customer(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_card_tokenization_request_customer_MAIN
#endif // post_card_tokenization_request_customer_TEST
