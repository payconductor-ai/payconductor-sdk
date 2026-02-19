#ifndef post_withdraws_200_response_TEST
#define post_withdraws_200_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_withdraws_200_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_withdraws_200_response.h"
post_withdraws_200_response_t* instantiate_post_withdraws_200_response(int include_optional);

#include "test_post_withdraws_200_response_payed_at.c"
#include "test_post_withdraws_200_response_payout_account.c"


post_withdraws_200_response_t* instantiate_post_withdraws_200_response(int include_optional) {
  post_withdraws_200_response_t* post_withdraws_200_response = NULL;
  if (include_optional) {
    post_withdraws_200_response = post_withdraws_200_response_create(
      "0",
      "0",
      "0",
      "0",
      1.337,
      payconductor_api_post_withdraws_200_response__Generating,
      "0",
      "0",
      null,
       // false, not to have infinite recursion
      instantiate_post_withdraws_200_response_payout_account(0)
    );
  } else {
    post_withdraws_200_response = post_withdraws_200_response_create(
      "0",
      "0",
      "0",
      "0",
      1.337,
      payconductor_api_post_withdraws_200_response__Generating,
      "0",
      "0",
      null,
      NULL
    );
  }

  return post_withdraws_200_response;
}


#ifdef post_withdraws_200_response_MAIN

void test_post_withdraws_200_response(int include_optional) {
    post_withdraws_200_response_t* post_withdraws_200_response_1 = instantiate_post_withdraws_200_response(include_optional);

	cJSON* jsonpost_withdraws_200_response_1 = post_withdraws_200_response_convertToJSON(post_withdraws_200_response_1);
	printf("post_withdraws_200_response :\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_1));
	post_withdraws_200_response_t* post_withdraws_200_response_2 = post_withdraws_200_response_parseFromJSON(jsonpost_withdraws_200_response_1);
	cJSON* jsonpost_withdraws_200_response_2 = post_withdraws_200_response_convertToJSON(post_withdraws_200_response_2);
	printf("repeating post_withdraws_200_response:\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_2));
}

int main() {
  test_post_withdraws_200_response(1);
  test_post_withdraws_200_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_withdraws_200_response_MAIN
#endif // post_withdraws_200_response_TEST
