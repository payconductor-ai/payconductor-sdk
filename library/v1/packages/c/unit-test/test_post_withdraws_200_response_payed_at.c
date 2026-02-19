#ifndef post_withdraws_200_response_payed_at_TEST
#define post_withdraws_200_response_payed_at_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_withdraws_200_response_payed_at_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_withdraws_200_response_payed_at.h"
post_withdraws_200_response_payed_at_t* instantiate_post_withdraws_200_response_payed_at(int include_optional);



post_withdraws_200_response_payed_at_t* instantiate_post_withdraws_200_response_payed_at(int include_optional) {
  post_withdraws_200_response_payed_at_t* post_withdraws_200_response_payed_at = NULL;
  if (include_optional) {
    post_withdraws_200_response_payed_at = post_withdraws_200_response_payed_at_create(
    );
  } else {
    post_withdraws_200_response_payed_at = post_withdraws_200_response_payed_at_create(
    );
  }

  return post_withdraws_200_response_payed_at;
}


#ifdef post_withdraws_200_response_payed_at_MAIN

void test_post_withdraws_200_response_payed_at(int include_optional) {
    post_withdraws_200_response_payed_at_t* post_withdraws_200_response_payed_at_1 = instantiate_post_withdraws_200_response_payed_at(include_optional);

	cJSON* jsonpost_withdraws_200_response_payed_at_1 = post_withdraws_200_response_payed_at_convertToJSON(post_withdraws_200_response_payed_at_1);
	printf("post_withdraws_200_response_payed_at :\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_payed_at_1));
	post_withdraws_200_response_payed_at_t* post_withdraws_200_response_payed_at_2 = post_withdraws_200_response_payed_at_parseFromJSON(jsonpost_withdraws_200_response_payed_at_1);
	cJSON* jsonpost_withdraws_200_response_payed_at_2 = post_withdraws_200_response_payed_at_convertToJSON(post_withdraws_200_response_payed_at_2);
	printf("repeating post_withdraws_200_response_payed_at:\n%s\n", cJSON_Print(jsonpost_withdraws_200_response_payed_at_2));
}

int main() {
  test_post_withdraws_200_response_payed_at(1);
  test_post_withdraws_200_response_payed_at(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_withdraws_200_response_payed_at_MAIN
#endif // post_withdraws_200_response_payed_at_TEST
