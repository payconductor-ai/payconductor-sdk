#ifndef post_withdraws_request_TEST
#define post_withdraws_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_withdraws_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_withdraws_request.h"
post_withdraws_request_t* instantiate_post_withdraws_request(int include_optional);

#include "test_merchant_input.c"
#include "test_post_withdraws_request_payout_account.c"


post_withdraws_request_t* instantiate_post_withdraws_request(int include_optional) {
  post_withdraws_request_t* post_withdraws_request = NULL;
  if (include_optional) {
    post_withdraws_request = post_withdraws_request_create(
      1,
      "0",
       // false, not to have infinite recursion
      instantiate_merchant_input(0),
       // false, not to have infinite recursion
      instantiate_post_withdraws_request_payout_account(0)
    );
  } else {
    post_withdraws_request = post_withdraws_request_create(
      1,
      "0",
      NULL,
      NULL
    );
  }

  return post_withdraws_request;
}


#ifdef post_withdraws_request_MAIN

void test_post_withdraws_request(int include_optional) {
    post_withdraws_request_t* post_withdraws_request_1 = instantiate_post_withdraws_request(include_optional);

	cJSON* jsonpost_withdraws_request_1 = post_withdraws_request_convertToJSON(post_withdraws_request_1);
	printf("post_withdraws_request :\n%s\n", cJSON_Print(jsonpost_withdraws_request_1));
	post_withdraws_request_t* post_withdraws_request_2 = post_withdraws_request_parseFromJSON(jsonpost_withdraws_request_1);
	cJSON* jsonpost_withdraws_request_2 = post_withdraws_request_convertToJSON(post_withdraws_request_2);
	printf("repeating post_withdraws_request:\n%s\n", cJSON_Print(jsonpost_withdraws_request_2));
}

int main() {
  test_post_withdraws_request(1);
  test_post_withdraws_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_withdraws_request_MAIN
#endif // post_withdraws_request_TEST
