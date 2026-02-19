#ifndef post_orders_200_response_bank_slip_TEST
#define post_orders_200_response_bank_slip_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_bank_slip_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response_bank_slip.h"
post_orders_200_response_bank_slip_t* instantiate_post_orders_200_response_bank_slip(int include_optional);



post_orders_200_response_bank_slip_t* instantiate_post_orders_200_response_bank_slip(int include_optional) {
  post_orders_200_response_bank_slip_t* post_orders_200_response_bank_slip = NULL;
  if (include_optional) {
    post_orders_200_response_bank_slip = post_orders_200_response_bank_slip_create(
      "0",
      "0",
      "0"
    );
  } else {
    post_orders_200_response_bank_slip = post_orders_200_response_bank_slip_create(
      "0",
      "0",
      "0"
    );
  }

  return post_orders_200_response_bank_slip;
}


#ifdef post_orders_200_response_bank_slip_MAIN

void test_post_orders_200_response_bank_slip(int include_optional) {
    post_orders_200_response_bank_slip_t* post_orders_200_response_bank_slip_1 = instantiate_post_orders_200_response_bank_slip(include_optional);

	cJSON* jsonpost_orders_200_response_bank_slip_1 = post_orders_200_response_bank_slip_convertToJSON(post_orders_200_response_bank_slip_1);
	printf("post_orders_200_response_bank_slip :\n%s\n", cJSON_Print(jsonpost_orders_200_response_bank_slip_1));
	post_orders_200_response_bank_slip_t* post_orders_200_response_bank_slip_2 = post_orders_200_response_bank_slip_parseFromJSON(jsonpost_orders_200_response_bank_slip_1);
	cJSON* jsonpost_orders_200_response_bank_slip_2 = post_orders_200_response_bank_slip_convertToJSON(post_orders_200_response_bank_slip_2);
	printf("repeating post_orders_200_response_bank_slip:\n%s\n", cJSON_Print(jsonpost_orders_200_response_bank_slip_2));
}

int main() {
  test_post_orders_200_response_bank_slip(1);
  test_post_orders_200_response_bank_slip(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_bank_slip_MAIN
#endif // post_orders_200_response_bank_slip_TEST
