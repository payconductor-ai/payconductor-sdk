#ifndef post_orders_request_fingerprints_TEST
#define post_orders_request_fingerprints_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_request_fingerprints_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_request_fingerprints.h"
post_orders_request_fingerprints_t* instantiate_post_orders_request_fingerprints(int include_optional);



post_orders_request_fingerprints_t* instantiate_post_orders_request_fingerprints(int include_optional) {
  post_orders_request_fingerprints_t* post_orders_request_fingerprints = NULL;
  if (include_optional) {
    post_orders_request_fingerprints = post_orders_request_fingerprints_create(
      "0"
    );
  } else {
    post_orders_request_fingerprints = post_orders_request_fingerprints_create(
      "0"
    );
  }

  return post_orders_request_fingerprints;
}


#ifdef post_orders_request_fingerprints_MAIN

void test_post_orders_request_fingerprints(int include_optional) {
    post_orders_request_fingerprints_t* post_orders_request_fingerprints_1 = instantiate_post_orders_request_fingerprints(include_optional);

	cJSON* jsonpost_orders_request_fingerprints_1 = post_orders_request_fingerprints_convertToJSON(post_orders_request_fingerprints_1);
	printf("post_orders_request_fingerprints :\n%s\n", cJSON_Print(jsonpost_orders_request_fingerprints_1));
	post_orders_request_fingerprints_t* post_orders_request_fingerprints_2 = post_orders_request_fingerprints_parseFromJSON(jsonpost_orders_request_fingerprints_1);
	cJSON* jsonpost_orders_request_fingerprints_2 = post_orders_request_fingerprints_convertToJSON(post_orders_request_fingerprints_2);
	printf("repeating post_orders_request_fingerprints:\n%s\n", cJSON_Print(jsonpost_orders_request_fingerprints_2));
}

int main() {
  test_post_orders_request_fingerprints(1);
  test_post_orders_request_fingerprints(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_request_fingerprints_MAIN
#endif // post_orders_request_fingerprints_TEST
