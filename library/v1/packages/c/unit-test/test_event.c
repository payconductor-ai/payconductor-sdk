#ifndef event_TEST
#define event_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define event_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/event.h"
event_t* instantiate_event(int include_optional);



event_t* instantiate_event(int include_optional) {
  event_t* event = NULL;
  if (include_optional) {
    event = event_create(
    );
  } else {
    event = event_create(
    );
  }

  return event;
}


#ifdef event_MAIN

void test_event(int include_optional) {
    event_t* event_1 = instantiate_event(include_optional);

	cJSON* jsonevent_1 = event_convertToJSON(event_1);
	printf("event :\n%s\n", cJSON_Print(jsonevent_1));
	event_t* event_2 = event_parseFromJSON(jsonevent_1);
	cJSON* jsonevent_2 = event_convertToJSON(event_2);
	printf("repeating event:\n%s\n", cJSON_Print(jsonevent_2));
}

int main() {
  test_event(1);
  test_event(0);

  printf("Hello world \n");
  return 0;
}

#endif // event_MAIN
#endif // event_TEST
