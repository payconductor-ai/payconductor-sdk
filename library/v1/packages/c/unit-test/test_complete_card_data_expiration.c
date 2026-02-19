#ifndef complete_card_data_expiration_TEST
#define complete_card_data_expiration_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define complete_card_data_expiration_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/complete_card_data_expiration.h"
complete_card_data_expiration_t* instantiate_complete_card_data_expiration(int include_optional);



complete_card_data_expiration_t* instantiate_complete_card_data_expiration(int include_optional) {
  complete_card_data_expiration_t* complete_card_data_expiration = NULL;
  if (include_optional) {
    complete_card_data_expiration = complete_card_data_expiration_create(
      1,
      2025
    );
  } else {
    complete_card_data_expiration = complete_card_data_expiration_create(
      1,
      2025
    );
  }

  return complete_card_data_expiration;
}


#ifdef complete_card_data_expiration_MAIN

void test_complete_card_data_expiration(int include_optional) {
    complete_card_data_expiration_t* complete_card_data_expiration_1 = instantiate_complete_card_data_expiration(include_optional);

	cJSON* jsoncomplete_card_data_expiration_1 = complete_card_data_expiration_convertToJSON(complete_card_data_expiration_1);
	printf("complete_card_data_expiration :\n%s\n", cJSON_Print(jsoncomplete_card_data_expiration_1));
	complete_card_data_expiration_t* complete_card_data_expiration_2 = complete_card_data_expiration_parseFromJSON(jsoncomplete_card_data_expiration_1);
	cJSON* jsoncomplete_card_data_expiration_2 = complete_card_data_expiration_convertToJSON(complete_card_data_expiration_2);
	printf("repeating complete_card_data_expiration:\n%s\n", cJSON_Print(jsoncomplete_card_data_expiration_2));
}

int main() {
  test_complete_card_data_expiration(1);
  test_complete_card_data_expiration(0);

  printf("Hello world \n");
  return 0;
}

#endif // complete_card_data_expiration_MAIN
#endif // complete_card_data_expiration_TEST
