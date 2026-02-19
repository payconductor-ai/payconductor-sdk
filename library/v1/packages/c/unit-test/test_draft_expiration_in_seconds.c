#ifndef draft_expiration_in_seconds_TEST
#define draft_expiration_in_seconds_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define draft_expiration_in_seconds_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/draft_expiration_in_seconds.h"
draft_expiration_in_seconds_t* instantiate_draft_expiration_in_seconds(int include_optional);



draft_expiration_in_seconds_t* instantiate_draft_expiration_in_seconds(int include_optional) {
  draft_expiration_in_seconds_t* draft_expiration_in_seconds = NULL;
  if (include_optional) {
    draft_expiration_in_seconds = draft_expiration_in_seconds_create(
    );
  } else {
    draft_expiration_in_seconds = draft_expiration_in_seconds_create(
    );
  }

  return draft_expiration_in_seconds;
}


#ifdef draft_expiration_in_seconds_MAIN

void test_draft_expiration_in_seconds(int include_optional) {
    draft_expiration_in_seconds_t* draft_expiration_in_seconds_1 = instantiate_draft_expiration_in_seconds(include_optional);

	cJSON* jsondraft_expiration_in_seconds_1 = draft_expiration_in_seconds_convertToJSON(draft_expiration_in_seconds_1);
	printf("draft_expiration_in_seconds :\n%s\n", cJSON_Print(jsondraft_expiration_in_seconds_1));
	draft_expiration_in_seconds_t* draft_expiration_in_seconds_2 = draft_expiration_in_seconds_parseFromJSON(jsondraft_expiration_in_seconds_1);
	cJSON* jsondraft_expiration_in_seconds_2 = draft_expiration_in_seconds_convertToJSON(draft_expiration_in_seconds_2);
	printf("repeating draft_expiration_in_seconds:\n%s\n", cJSON_Print(jsondraft_expiration_in_seconds_2));
}

int main() {
  test_draft_expiration_in_seconds(1);
  test_draft_expiration_in_seconds(0);

  printf("Hello world \n");
  return 0;
}

#endif // draft_expiration_in_seconds_MAIN
#endif // draft_expiration_in_seconds_TEST
