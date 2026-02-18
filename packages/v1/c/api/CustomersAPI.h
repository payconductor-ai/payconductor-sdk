#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/customer.h"
#include "../model/customer_1.h"

// Enum PERIOD for CustomersAPI_getCustomers
typedef enum  { payconductor_api_getCustomers_PERIOD_NULL = 0, payconductor_api_getCustomers_PERIOD_Today, payconductor_api_getCustomers_PERIOD_Yesterday, payconductor_api_getCustomers_PERIOD_Last7Days, payconductor_api_getCustomers_PERIOD_Last30Days, payconductor_api_getCustomers_PERIOD_ThisMonth, payconductor_api_getCustomers_PERIOD_LastMonth, payconductor_api_getCustomers_PERIOD_ThisYear, payconductor_api_getCustomers_PERIOD_Custom } payconductor_api_getCustomers_period_e;


void
CustomersAPI_deleteCustomersById(apiClient_t *apiClient, char *id);


void
CustomersAPI_getCustomers(apiClient_t *apiClient, double page, double pageSize, payconductor_api_getCustomers_period_e period, char *email, char *name, char endDate, char startDate);


void
CustomersAPI_getCustomersById(apiClient_t *apiClient, char *id);


void
CustomersAPI_patchCustomersById(apiClient_t *apiClient, char *id, customer_1_t *customer_1);


void
CustomersAPI_postCustomers(apiClient_t *apiClient, customer_t *customer);


