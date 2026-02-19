#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "event.h"


char* event_event_ToString(payconductor_api_event__e event) {
    char *eventArray[] =  { "NULL", "OrderCreated", "OrderPending", "OrderCompleted", "OrderFailed", "OrderRefunded", "OrderChargeback", "WithdrawCreated", "WithdrawCompleted", "WithdrawFailed", "WithdrawTransferring" };
    return eventArray[event];
}

payconductor_api_event__e event_event_FromString(char* event) {
    int stringToReturn = 0;
    char *eventArray[] =  { "NULL", "OrderCreated", "OrderPending", "OrderCompleted", "OrderFailed", "OrderRefunded", "OrderChargeback", "WithdrawCreated", "WithdrawCompleted", "WithdrawFailed", "WithdrawTransferring" };
    size_t sizeofArray = sizeof(eventArray) / sizeof(eventArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(event, eventArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *event_convertToJSON(payconductor_api_event__e event) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "event", event_event_ToString(event)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

payconductor_api_event__e event_parseFromJSON(cJSON *eventJSON) {
    if(!cJSON_IsString(eventJSON) || (eventJSON->valuestring == NULL)) {
        return 0;
    }
    return event_event_FromString(eventJSON->valuestring);
}
