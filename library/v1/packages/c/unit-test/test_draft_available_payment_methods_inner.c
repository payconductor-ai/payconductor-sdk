#ifndef draft_available_payment_methods_inner_TEST
#define draft_available_payment_methods_inner_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define draft_available_payment_methods_inner_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/draft_available_payment_methods_inner.h"
draft_available_payment_methods_inner_t* instantiate_draft_available_payment_methods_inner(int include_optional);



draft_available_payment_methods_inner_t* instantiate_draft_available_payment_methods_inner(int include_optional) {
  draft_available_payment_methods_inner_t* draft_available_payment_methods_inner = NULL;
  if (include_optional) {
    draft_available_payment_methods_inner = draft_available_payment_methods_inner_create(
    );
  } else {
    draft_available_payment_methods_inner = draft_available_payment_methods_inner_create(
    );
  }

  return draft_available_payment_methods_inner;
}


#ifdef draft_available_payment_methods_inner_MAIN

void test_draft_available_payment_methods_inner(int include_optional) {
    draft_available_payment_methods_inner_t* draft_available_payment_methods_inner_1 = instantiate_draft_available_payment_methods_inner(include_optional);

	cJSON* jsondraft_available_payment_methods_inner_1 = draft_available_payment_methods_inner_convertToJSON(draft_available_payment_methods_inner_1);
	printf("draft_available_payment_methods_inner :\n%s\n", cJSON_Print(jsondraft_available_payment_methods_inner_1));
	draft_available_payment_methods_inner_t* draft_available_payment_methods_inner_2 = draft_available_payment_methods_inner_parseFromJSON(jsondraft_available_payment_methods_inner_1);
	cJSON* jsondraft_available_payment_methods_inner_2 = draft_available_payment_methods_inner_convertToJSON(draft_available_payment_methods_inner_2);
	printf("repeating draft_available_payment_methods_inner:\n%s\n", cJSON_Print(jsondraft_available_payment_methods_inner_2));
}

int main() {
  test_draft_available_payment_methods_inner(1);
  test_draft_available_payment_methods_inner(0);

  printf("Hello world \n");
  return 0;
}

#endif // draft_available_payment_methods_inner_MAIN
#endif // draft_available_payment_methods_inner_TEST
