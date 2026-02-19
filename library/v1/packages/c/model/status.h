/*
 * status.h
 *
 * 
 */

#ifndef _status_H_
#define _status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct status_t status_t;


// Enum  for status

typedef enum { payconductor_api_status__NULL = 0, payconductor_api_status__Generating, payconductor_api_status__Pending, payconductor_api_status__Completed, payconductor_api_status__Failed, payconductor_api_status__Canceled, payconductor_api_status__Refunding, payconductor_api_status__Refunded, payconductor_api_status__InDispute, payconductor_api_status__Chargeback, payconductor_api_status__Transferring } payconductor_api_status__e;

char* status_status_ToString(payconductor_api_status__e status);

payconductor_api_status__e status_status_FromString(char* status);

cJSON *status_convertToJSON(payconductor_api_status__e status);

payconductor_api_status__e status_parseFromJSON(cJSON *statusJSON);

#endif /* _status_H_ */

