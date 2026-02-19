#ifndef pix_TEST
#define pix_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pix_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pix.h"
pix_t* instantiate_pix(int include_optional);

#include "test_pix_expiration_in_seconds.c"


pix_t* instantiate_pix(int include_optional) {
  pix_t* pix = NULL;
  if (include_optional) {
    pix = pix_create(
      payconductor_api_pix__Pix,
      null
    );
  } else {
    pix = pix_create(
      payconductor_api_pix__Pix,
      null
    );
  }

  return pix;
}


#ifdef pix_MAIN

void test_pix(int include_optional) {
    pix_t* pix_1 = instantiate_pix(include_optional);

	cJSON* jsonpix_1 = pix_convertToJSON(pix_1);
	printf("pix :\n%s\n", cJSON_Print(jsonpix_1));
	pix_t* pix_2 = pix_parseFromJSON(jsonpix_1);
	cJSON* jsonpix_2 = pix_convertToJSON(pix_2);
	printf("repeating pix:\n%s\n", cJSON_Print(jsonpix_2));
}

int main() {
  test_pix(1);
  test_pix(0);

  printf("Hello world \n");
  return 0;
}

#endif // pix_MAIN
#endif // pix_TEST
