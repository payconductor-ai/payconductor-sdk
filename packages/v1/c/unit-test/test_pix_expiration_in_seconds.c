#ifndef pix_expiration_in_seconds_TEST
#define pix_expiration_in_seconds_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pix_expiration_in_seconds_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pix_expiration_in_seconds.h"
pix_expiration_in_seconds_t* instantiate_pix_expiration_in_seconds(int include_optional);



pix_expiration_in_seconds_t* instantiate_pix_expiration_in_seconds(int include_optional) {
  pix_expiration_in_seconds_t* pix_expiration_in_seconds = NULL;
  if (include_optional) {
    pix_expiration_in_seconds = pix_expiration_in_seconds_create(
    );
  } else {
    pix_expiration_in_seconds = pix_expiration_in_seconds_create(
    );
  }

  return pix_expiration_in_seconds;
}


#ifdef pix_expiration_in_seconds_MAIN

void test_pix_expiration_in_seconds(int include_optional) {
    pix_expiration_in_seconds_t* pix_expiration_in_seconds_1 = instantiate_pix_expiration_in_seconds(include_optional);

	cJSON* jsonpix_expiration_in_seconds_1 = pix_expiration_in_seconds_convertToJSON(pix_expiration_in_seconds_1);
	printf("pix_expiration_in_seconds :\n%s\n", cJSON_Print(jsonpix_expiration_in_seconds_1));
	pix_expiration_in_seconds_t* pix_expiration_in_seconds_2 = pix_expiration_in_seconds_parseFromJSON(jsonpix_expiration_in_seconds_1);
	cJSON* jsonpix_expiration_in_seconds_2 = pix_expiration_in_seconds_convertToJSON(pix_expiration_in_seconds_2);
	printf("repeating pix_expiration_in_seconds:\n%s\n", cJSON_Print(jsonpix_expiration_in_seconds_2));
}

int main() {
  test_pix_expiration_in_seconds(1);
  test_pix_expiration_in_seconds(0);

  printf("Hello world \n");
  return 0;
}

#endif // pix_expiration_in_seconds_MAIN
#endif // pix_expiration_in_seconds_TEST
