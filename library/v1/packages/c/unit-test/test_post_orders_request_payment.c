#ifndef post_orders_request_payment_TEST
#define post_orders_request_payment_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define post_orders_request_payment_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/post_orders_request_payment.h"
post_orders_request_payment_t* instantiate_post_orders_request_payment(int include_optional);

#include "test_draft_expiration_in_seconds.c"
#include "test_credit_card_card.c"
#include "test_credit_card_installments.c"
#include "test_bank_slip_expiration_in_days.c"
#include "test_nu_pay_nu_pay.c"


post_orders_request_payment_t* instantiate_post_orders_request_payment(int include_optional) {
  post_orders_request_payment_t* post_orders_request_payment = NULL;
  if (include_optional) {
    post_orders_request_payment = post_orders_request_payment_create(
      payconductor_api_post_orders_request_payment__Pix,
      null,
      null,
      null,
      "0",
      null,
       // false, not to have infinite recursion
      instantiate_nu_pay_nu_pay(0),
      list_createList()
    );
  } else {
    post_orders_request_payment = post_orders_request_payment_create(
      payconductor_api_post_orders_request_payment__Pix,
      null,
      null,
      null,
      "0",
      null,
      NULL,
      list_createList()
    );
  }

  return post_orders_request_payment;
}


#ifdef post_orders_request_payment_MAIN

void test_post_orders_request_payment(int include_optional) {
    post_orders_request_payment_t* post_orders_request_payment_1 = instantiate_post_orders_request_payment(include_optional);

	cJSON* jsonpost_orders_request_payment_1 = post_orders_request_payment_convertToJSON(post_orders_request_payment_1);
	printf("post_orders_request_payment :\n%s\n", cJSON_Print(jsonpost_orders_request_payment_1));
	post_orders_request_payment_t* post_orders_request_payment_2 = post_orders_request_payment_parseFromJSON(jsonpost_orders_request_payment_1);
	cJSON* jsonpost_orders_request_payment_2 = post_orders_request_payment_convertToJSON(post_orders_request_payment_2);
	printf("repeating post_orders_request_payment:\n%s\n", cJSON_Print(jsonpost_orders_request_payment_2));
}

int main() {
  test_post_orders_request_payment(1);
  test_post_orders_request_payment(0);

  printf("Hello world \n");
  return 0;
}

#endif // post_orders_request_payment_MAIN
#endif // post_orders_request_payment_TEST
