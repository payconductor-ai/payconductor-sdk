#ifndef post_orders_request_TEST
#define post_orders_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_request.h"
post_orders_request_t* instantiate_post_orders_request(int include_optional);

#include "test_customer.c"
#include "test_post_orders_request_fingerprints.c"
#include "test_merchant_input.c"
#include "test_post_orders_request_payment.c"
#include "test_post_orders_request_session.c"


post_orders_request_t* instantiate_post_orders_request(int include_optional) {
  post_orders_request_t* post_orders_request = NULL;
  if (include_optional) {
    post_orders_request = post_orders_request_create(
      1.337,
      "0",
       // false, not to have infinite recursion
      instantiate_customer(0),
      1.337,
      "0",
       // false, not to have infinite recursion
      instantiate_post_orders_request_fingerprints(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_merchant_input(0),
      null,
      0,
       // false, not to have infinite recursion
      instantiate_post_orders_request_session(0),
      1.337,
      1.337,
      0
    );
  } else {
    post_orders_request = post_orders_request_create(
      1.337,
      "0",
      NULL,
      1.337,
      "0",
      NULL,
      list_createList(),
      NULL,
      null,
      0,
      NULL,
      1.337,
      1.337,
      0
    );
  }

  return post_orders_request;
}


#ifdef post_orders_request_MAIN

void test_post_orders_request(int include_optional) {
    post_orders_request_t* post_orders_request_1 = instantiate_post_orders_request(include_optional);

	cJSON* jsonpost_orders_request_1 = post_orders_request_convertToJSON(post_orders_request_1);
	printf("post_orders_request :\n%s\n", cJSON_Print(jsonpost_orders_request_1));
	post_orders_request_t* post_orders_request_2 = post_orders_request_parseFromJSON(jsonpost_orders_request_1);
	cJSON* jsonpost_orders_request_2 = post_orders_request_convertToJSON(post_orders_request_2);
	printf("repeating post_orders_request:\n%s\n", cJSON_Print(jsonpost_orders_request_2));
}

int main() {
  test_post_orders_request(1);
  test_post_orders_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_request_MAIN
#endif // post_orders_request_TEST
