#ifndef draft_TEST
#define draft_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define draft_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/draft.h"
draft_t* instantiate_draft(int include_optional);

#include "test_draft_expiration_in_seconds.c"


draft_t* instantiate_draft(int include_optional) {
  draft_t* draft = NULL;
  if (include_optional) {
    draft = draft_create(
      payconductor_api_draft__Pix,
      null,
      list_createList()
    );
  } else {
    draft = draft_create(
      payconductor_api_draft__Pix,
      null,
      list_createList()
    );
  }

  return draft;
}


#ifdef draft_MAIN

void test_draft(int include_optional) {
    draft_t* draft_1 = instantiate_draft(include_optional);

	cJSON* jsondraft_1 = draft_convertToJSON(draft_1);
	printf("draft :\n%s\n", cJSON_Print(jsondraft_1));
	draft_t* draft_2 = draft_parseFromJSON(jsondraft_1);
	cJSON* jsondraft_2 = draft_convertToJSON(draft_2);
	printf("repeating draft:\n%s\n", cJSON_Print(jsondraft_2));
}

int main() {
  test_draft(1);
  test_draft(0);

  printf("Hello world \n");
  return 0;
}

#endif // draft_MAIN
#endif // draft_TEST
