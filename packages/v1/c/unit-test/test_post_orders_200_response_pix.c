#ifndef post_orders_200_response_pix_TEST
#define post_orders_200_response_pix_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_pix_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response_pix.h"
post_orders_200_response_pix_t* instantiate_post_orders_200_response_pix(int include_optional);



post_orders_200_response_pix_t* instantiate_post_orders_200_response_pix(int include_optional) {
  post_orders_200_response_pix_t* post_orders_200_response_pix = NULL;
  if (include_optional) {
    post_orders_200_response_pix = post_orders_200_response_pix_create(
      "0",
      "0",
      "0"
    );
  } else {
    post_orders_200_response_pix = post_orders_200_response_pix_create(
      "0",
      "0",
      "0"
    );
  }

  return post_orders_200_response_pix;
}


#ifdef post_orders_200_response_pix_MAIN

void test_post_orders_200_response_pix(int include_optional) {
    post_orders_200_response_pix_t* post_orders_200_response_pix_1 = instantiate_post_orders_200_response_pix(include_optional);

	cJSON* jsonpost_orders_200_response_pix_1 = post_orders_200_response_pix_convertToJSON(post_orders_200_response_pix_1);
	printf("post_orders_200_response_pix :\n%s\n", cJSON_Print(jsonpost_orders_200_response_pix_1));
	post_orders_200_response_pix_t* post_orders_200_response_pix_2 = post_orders_200_response_pix_parseFromJSON(jsonpost_orders_200_response_pix_1);
	cJSON* jsonpost_orders_200_response_pix_2 = post_orders_200_response_pix_convertToJSON(post_orders_200_response_pix_2);
	printf("repeating post_orders_200_response_pix:\n%s\n", cJSON_Print(jsonpost_orders_200_response_pix_2));
}

int main() {
  test_post_orders_200_response_pix(1);
  test_post_orders_200_response_pix(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_pix_MAIN
#endif // post_orders_200_response_pix_TEST
