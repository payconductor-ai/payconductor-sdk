#ifndef post_withdraws_200_response_payout_account_TEST
#define post_withdraws_200_response_payout_account_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_withdraws_200_response_payout_account_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_withdraws_200_response_payout_account.h"
post_withdraws_200_response_payout_account_t* instantiate_post_withdraws_200_response_payout_account(int include_optional);



post_withdraws_200_response_payout_account_t* instantiate_post_withdraws_200_response_payout_account(int include_optional) {
  post_withdraws_200_response_payout_account_t* post_withdraws_200_response_payout_account = NULL;
  if (include_optional) {
    post_withdraws_200_response_payout_account = post_withdraws_200_response_payout_account_create(
      "0",
      "a",
      "0",
      "0",
      payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_"Cpf"
    );
  } else {
    post_withdraws_200_response_payout_account = post_withdraws_200_response_payout_account_create(
      "0",
      "a",
      "0",
      "0",
      payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_"Cpf"
    );
  }

  return post_withdraws_200_response_payout_account;
}


#ifdef post_withdraws_200_response_payout_account_MAIN

void test_post_withdraws_200_response_payout_account(int include_optional) {
    post_withdraws_200_response_payout_account_t* post_withdraws_200_response_payout_account_1 = instantiate_post_withdraws_200_response_payout_account(include_optional);

	cJSON* jsonpost_withdraws_200_response_payout_account_1 = post_withdraws_200_response_payout_account_convertToJSON(post_withdraws_200_response_payout_account_1);
	printf("post_withdraws_200_response_payout_account :\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_payout_account_1));
	post_withdraws_200_response_payout_account_t* post_withdraws_200_response_payout_account_2 = post_withdraws_200_response_payout_account_parseFromJSON(jsonpost_withdraws_200_response_payout_account_1);
	cJSON* jsonpost_withdraws_200_response_payout_account_2 = post_withdraws_200_response_payout_account_convertToJSON(post_withdraws_200_response_payout_account_2);
	printf("repeating post_withdraws_200_response_payout_account:\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_payout_account_2));
}

int main() {
  test_post_withdraws_200_response_payout_account(1);
  test_post_withdraws_200_response_payout_account(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_withdraws_200_response_payout_account_MAIN
#endif // post_withdraws_200_response_payout_account_TEST
