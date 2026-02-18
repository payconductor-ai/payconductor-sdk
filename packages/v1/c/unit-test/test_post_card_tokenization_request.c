#ifndef post_card_tokenization_request_TEST
#define post_card_tokenization_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_card_tokenization_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_card_tokenization_request.h"
post_card_tokenization_request_t* instantiate_post_card_tokenization_request(int include_optional);

#include "test_complete_card_data.c"
#include "test_post_card_tokenization_request_customer.c"


post_card_tokenization_request_t* instantiate_post_card_tokenization_request(int include_optional) {
  post_card_tokenization_request_t* post_card_tokenization_request = NULL;
  if (include_optional) {
    post_card_tokenization_request = post_card_tokenization_request_create(
       // false, not to have infinite recursion
      instantiate_complete_card_data(0),
      1,
      null
    );
  } else {
    post_card_tokenization_request = post_card_tokenization_request_create(
      NULL,
      1,
      null
    );
  }

  return post_card_tokenization_request;
}


#ifdef post_card_tokenization_request_MAIN

void test_post_card_tokenization_request(int include_optional) {
    post_card_tokenization_request_t* post_card_tokenization_request_1 = instantiate_post_card_tokenization_request(include_optional);

	cJSON* jsonpost_card_tokenization_request_1 = post_card_tokenization_request_convertToJSON(post_card_tokenization_request_1);
	printf("post_card_tokenization_request :\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_1));
	post_card_tokenization_request_t* post_card_tokenization_request_2 = post_card_tokenization_request_parseFromJSON(jsonpost_card_tokenization_request_1);
	cJSON* jsonpost_card_tokenization_request_2 = post_card_tokenization_request_convertToJSON(post_card_tokenization_request_2);
	printf("repeating post_card_tokenization_request:\n%s\n", cJSON_Print(jsonpost_card_tokenization_request_2));
}

int main() {
  test_post_card_tokenization_request(1);
  test_post_card_tokenization_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_card_tokenization_request_MAIN
#endif // post_card_tokenization_request_TEST
