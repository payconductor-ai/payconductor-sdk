#ifndef post_orders_200_response_TEST
#define post_orders_200_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_200_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_200_response.h"
post_orders_200_response_t* instantiate_post_orders_200_response(int include_optional);

#include "test_post_orders_200_response_pix.c"
#include "test_post_orders_200_response_bank_slip.c"
#include "test_post_orders_200_response_nu_pay.c"
#include "test_post_orders_200_response_pic_pay.c"
#include "test_post_orders_200_response_credit_card.c"
#include "test_post_orders_200_response_session.c"


post_orders_200_response_t* instantiate_post_orders_200_response(int include_optional) {
  post_orders_200_response_t* post_orders_200_response = NULL;
  if (include_optional) {
    post_orders_200_response = post_orders_200_response_create(
      "0",
      "0",
      "0",
      "0",
      1.337,
      1.337,
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_pix(0),
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_bank_slip(0),
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_nu_pay(0),
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_pic_pay(0),
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_credit_card(0),
      payconductor_api_post_orders_200_response_STATUS_Generating,
      payconductor_api_post_orders_200_response_PAYMENTMETHOD_Pix,
      "0",
      "0",
      "0",
      list_createList(),
       // false, not to have infinite recursion
      instantiate_post_orders_200_response_session(0)
    );
  } else {
    post_orders_200_response = post_orders_200_response_create(
      "0",
      "0",
      "0",
      "0",
      1.337,
      1.337,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      payconductor_api_post_orders_200_response_STATUS_Generating,
      payconductor_api_post_orders_200_response_PAYMENTMETHOD_Pix,
      "0",
      "0",
      "0",
      list_createList(),
      NULL
    );
  }

  return post_orders_200_response;
}


#ifdef post_orders_200_response_MAIN

void test_post_orders_200_response(int include_optional) {
    post_orders_200_response_t* post_orders_200_response_1 = instantiate_post_orders_200_response(include_optional);

	cJSON* jsonpost_orders_200_response_1 = post_orders_200_response_convertToJSON(post_orders_200_response_1);
	printf("post_orders_200_response :\n%s\n", cJSON_Print(jsonpost_orders_200_response_1));
	post_orders_200_response_t* post_orders_200_response_2 = post_orders_200_response_parseFromJSON(jsonpost_orders_200_response_1);
	cJSON* jsonpost_orders_200_response_2 = post_orders_200_response_convertToJSON(post_orders_200_response_2);
	printf("repeating post_orders_200_response:\n%s\n", cJSON_Print(jsonpost_orders_200_response_2));
}

int main() {
  test_post_orders_200_response(1);
  test_post_orders_200_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_200_response_MAIN
#endif // post_orders_200_response_TEST
