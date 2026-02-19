/*
 * event.h
 *
 * 
 */

#ifndef _event_H_
#define _event_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct event_t event_t;


// Enum  for event

typedef enum { payconductor_api_event__NULL = 0, payconductor_api_event__OrderCreated, payconductor_api_event__OrderPending, payconductor_api_event__OrderCompleted, payconductor_api_event__OrderFailed, payconductor_api_event__OrderRefunded, payconductor_api_event__OrderChargeback, payconductor_api_event__WithdrawCreated, payconductor_api_event__WithdrawCompleted, payconductor_api_event__WithdrawFailed, payconductor_api_event__WithdrawTransferring } payconductor_api_event__e;

char* event_event_ToString(payconductor_api_event__e event);

payconductor_api_event__e event_event_FromString(char* event);

cJSON *event_convertToJSON(payconductor_api_event__e event);

payconductor_api_event__e event_parseFromJSON(cJSON *eventJSON);

#endif /* _event_H_ */

