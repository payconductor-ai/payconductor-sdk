#ifndef complete_card_data_TEST
#define complete_card_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define complete_card_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/complete_card_data.h"
complete_card_data_t* instantiate_complete_card_data(int include_optional);

#include "test_complete_card_data_expiration.c"


complete_card_data_t* instantiate_complete_card_data(int include_optional) {
  complete_card_data_t* complete_card_data = NULL;
  if (include_optional) {
    complete_card_data = complete_card_data_create(
      "012",
       // false, not to have infinite recursion
      instantiate_complete_card_data_expiration(0),
      "0",
      "0"
    );
  } else {
    complete_card_data = complete_card_data_create(
      "012",
      NULL,
      "0",
      "0"
    );
  }

  return complete_card_data;
}


#ifdef complete_card_data_MAIN

void test_complete_card_data(int include_optional) {
    complete_card_data_t* complete_card_data_1 = instantiate_complete_card_data(include_optional);

	cJSON* jsoncomplete_card_data_1 = complete_card_data_convertToJSON(complete_card_data_1);
	printf("complete_card_data :\n%s\n", cJSON_Print(jsoncomplete_card_data_1));
	complete_card_data_t* complete_card_data_2 = complete_card_data_parseFromJSON(jsoncomplete_card_data_1);
	cJSON* jsoncomplete_card_data_2 = complete_card_data_convertToJSON(complete_card_data_2);
	printf("repeating complete_card_data:\n%s\n", cJSON_Print(jsoncomplete_card_data_2));
}

int main() {
  test_complete_card_data(1);
  test_complete_card_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // complete_card_data_MAIN
#endif // complete_card_data_TEST
