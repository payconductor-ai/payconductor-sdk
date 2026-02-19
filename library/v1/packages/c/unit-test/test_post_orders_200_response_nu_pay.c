#ifndef post_orders_200_response_nu_pay_TEST
#define post_orders_200_response_nu_pay_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_nu_pay_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response_nu_pay.h"
post_orders_200_response_nu_pay_t* instantiate_post_orders_200_response_nu_pay(int include_optional);



post_orders_200_response_nu_pay_t* instantiate_post_orders_200_response_nu_pay(int include_optional) {
  post_orders_200_response_nu_pay_t* post_orders_200_response_nu_pay = NULL;
  if (include_optional) {
    post_orders_200_response_nu_pay = post_orders_200_response_nu_pay_create(
      "0"
    );
  } else {
    post_orders_200_response_nu_pay = post_orders_200_response_nu_pay_create(
      "0"
    );
  }

  return post_orders_200_response_nu_pay;
}


#ifdef post_orders_200_response_nu_pay_MAIN

void test_post_orders_200_response_nu_pay(int include_optional) {
    post_orders_200_response_nu_pay_t* post_orders_200_response_nu_pay_1 = instantiate_post_orders_200_response_nu_pay(include_optional);

	cJSON* jsonpost_orders_200_response_nu_pay_1 = post_orders_200_response_nu_pay_convertToJSON(post_orders_200_response_nu_pay_1);
	printf("post_orders_200_response_nu_pay :\n%s\n", cJSON_Print(jsonpost_orders_200_response_nu_pay_1));
	post_orders_200_response_nu_pay_t* post_orders_200_response_nu_pay_2 = post_orders_200_response_nu_pay_parseFromJSON(jsonpost_orders_200_response_nu_pay_1);
	cJSON* jsonpost_orders_200_response_nu_pay_2 = post_orders_200_response_nu_pay_convertToJSON(post_orders_200_response_nu_pay_2);
	printf("repeating post_orders_200_response_nu_pay:\n%s\n", cJSON_Print(jsonpost_orders_200_response_nu_pay_2));
}

int main() {
  test_post_orders_200_response_nu_pay(1);
  test_post_orders_200_response_nu_pay(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_nu_pay_MAIN
#endif // post_orders_200_response_nu_pay_TEST
