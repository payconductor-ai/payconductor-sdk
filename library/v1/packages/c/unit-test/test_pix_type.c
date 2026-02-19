#ifndef pix_type_TEST
#define pix_type_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pix_type_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pix_type.h"
pix_type_t* instantiate_pix_type(int include_optional);



pix_type_t* instantiate_pix_type(int include_optional) {
  pix_type_t* pix_type = NULL;
  if (include_optional) {
    pix_type = pix_type_create(
    );
  } else {
    pix_type = pix_type_create(
    );
  }

  return pix_type;
}


#ifdef pix_type_MAIN

void test_pix_type(int include_optional) {
    pix_type_t* pix_type_1 = instantiate_pix_type(include_optional);

	cJSON* jsonpix_type_1 = pix_type_convertToJSON(pix_type_1);
	printf("pix_type :\n%s\n", cJSON_Print(jsonpix_type_1));
	pix_type_t* pix_type_2 = pix_type_parseFromJSON(jsonpix_type_1);
	cJSON* jsonpix_type_2 = pix_type_convertToJSON(pix_type_2);
	printf("repeating pix_type:\n%s\n", cJSON_Print(jsonpix_type_2));
}

int main() {
  test_pix_type(1);
  test_pix_type(0);

  printf("Hello world \n");
  return 0;
}

#endif // pix_type_MAIN
#endif // pix_type_TEST
