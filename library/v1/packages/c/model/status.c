#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "status.h"


char* status_status_ToString(payconductor_api_status__e status) {
    char *statusArray[] =  { "NULL", "Generating", "Pending", "Completed", "Failed", "Canceled", "Refunding", "Refunded", "InDispute", "Chargeback", "Transferring" };
    return statusArray[status];
}

payconductor_api_status__e status_status_FromString(char* status) {
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "Generating", "Pending", "Completed", "Failed", "Canceled", "Refunding", "Refunded", "InDispute", "Chargeback", "Transferring" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *status_convertToJSON(payconductor_api_status__e status) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", status_status_ToString(status)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

payconductor_api_status__e status_parseFromJSON(cJSON *statusJSON) {
    if(!cJSON_IsString(statusJSON) || (statusJSON->valuestring == NULL)) {
        return 0;
    }
    return status_status_FromString(statusJSON->valuestring);
}
