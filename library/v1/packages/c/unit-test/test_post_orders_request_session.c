#ifndef post_orders_request_session_TEST
#define post_orders_request_session_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_request_session_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_request_session.h"
post_orders_request_session_t* instantiate_post_orders_request_session(int include_optional);



post_orders_request_session_t* instantiate_post_orders_request_session(int include_optional) {
  post_orders_request_session_t* post_orders_request_session = NULL;
  if (include_optional) {
    post_orders_request_session = post_orders_request_session_create(
      15,
      "0",
      "0",
      "0123456789101112131415"
    );
  } else {
    post_orders_request_session = post_orders_request_session_create(
      15,
      "0",
      "0",
      "0123456789101112131415"
    );
  }

  return post_orders_request_session;
}


#ifdef post_orders_request_session_MAIN

void test_post_orders_request_session(int include_optional) {
    post_orders_request_session_t* post_orders_request_session_1 = instantiate_post_orders_request_session(include_optional);

	cJSON* jsonpost_orders_request_session_1 = post_orders_request_session_convertToJSON(post_orders_request_session_1);
	printf("post_orders_request_session :\n%s\n", cJSON_Print(jsonpost_orders_request_session_1));
	post_orders_request_session_t* post_orders_request_session_2 = post_orders_request_session_parseFromJSON(jsonpost_orders_request_session_1);
	cJSON* jsonpost_orders_request_session_2 = post_orders_request_session_convertToJSON(post_orders_request_session_2);
	printf("repeating post_orders_request_session:\n%s\n", cJSON_Print(jsonpost_orders_request_session_2));
}

int main() {
  test_post_orders_request_session(1);
  test_post_orders_request_session(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_request_session_MAIN
#endif // post_orders_request_session_TEST
