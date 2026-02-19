#ifndef pic_pay_TEST
#define pic_pay_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pic_pay_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pic_pay.h"
pic_pay_t* instantiate_pic_pay(int include_optional);



pic_pay_t* instantiate_pic_pay(int include_optional) {
  pic_pay_t* pic_pay = NULL;
  if (include_optional) {
    pic_pay = pic_pay_create(
      payconductor_api_pic_pay__Pix
    );
  } else {
    pic_pay = pic_pay_create(
      payconductor_api_pic_pay__Pix
    );
  }

  return pic_pay;
}


#ifdef pic_pay_MAIN

void test_pic_pay(int include_optional) {
    pic_pay_t* pic_pay_1 = instantiate_pic_pay(include_optional);

	cJSON* jsonpic_pay_1 = pic_pay_convertToJSON(pic_pay_1);
	printf("pic_pay :\n%s\n", cJSON_Print(jsonpic_pay_1));
	pic_pay_t* pic_pay_2 = pic_pay_parseFromJSON(jsonpic_pay_1);
	cJSON* jsonpic_pay_2 = pic_pay_convertToJSON(pic_pay_2);
	printf("repeating pic_pay:\n%s\n", cJSON_Print(jsonpic_pay_2));
}

int main() {
  test_pic_pay(1);
  test_pic_pay(0);

  printf("Hello world \n");
  return 0;
}

#endif // pic_pay_MAIN
#endif // pic_pay_TEST
