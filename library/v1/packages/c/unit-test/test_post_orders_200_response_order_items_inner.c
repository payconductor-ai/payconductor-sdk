#ifndef post_orders_200_response_order_items_inner_TEST
#define post_orders_200_response_order_items_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_order_items_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response_order_items_inner.h"
post_orders_200_response_order_items_inner_t* instantiate_post_orders_200_response_order_items_inner(int include_optional);



post_orders_200_response_order_items_inner_t* instantiate_post_orders_200_response_order_items_inner(int include_optional) {
  post_orders_200_response_order_items_inner_t* post_orders_200_response_order_items_inner = NULL;
  if (include_optional) {
    post_orders_200_response_order_items_inner = post_orders_200_response_order_items_inner_create(
      "0",
      "0",
      "0",
      1.337,
      1.337,
      1.337,
      1.337
    );
  } else {
    post_orders_200_response_order_items_inner = post_orders_200_response_order_items_inner_create(
      "0",
      "0",
      "0",
      1.337,
      1.337,
      1.337,
      1.337
    );
  }

  return post_orders_200_response_order_items_inner;
}


#ifdef post_orders_200_response_order_items_inner_MAIN

void test_post_orders_200_response_order_items_inner(int include_optional) {
    post_orders_200_response_order_items_inner_t* post_orders_200_response_order_items_inner_1 = instantiate_post_orders_200_response_order_items_inner(include_optional);

	cJSON* jsonpost_orders_200_response_order_items_inner_1 = post_orders_200_response_order_items_inner_convertToJSON(post_orders_200_response_order_items_inner_1);
	printf("post_orders_200_response_order_items_inner :\n%s\n", cJSON_Print(jsonpost_orders_200_response_order_items_inner_1));
	post_orders_200_response_order_items_inner_t* post_orders_200_response_order_items_inner_2 = post_orders_200_response_order_items_inner_parseFromJSON(jsonpost_orders_200_response_order_items_inner_1);
	cJSON* jsonpost_orders_200_response_order_items_inner_2 = post_orders_200_response_order_items_inner_convertToJSON(post_orders_200_response_order_items_inner_2);
	printf("repeating post_orders_200_response_order_items_inner:\n%s\n", cJSON_Print(jsonpost_orders_200_response_order_items_inner_2));
}

int main() {
  test_post_orders_200_response_order_items_inner(1);
  test_post_orders_200_response_order_items_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_order_items_inner_MAIN
#endif // post_orders_200_response_order_items_inner_TEST
