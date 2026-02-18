#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/post_withdraws_200_response.h"
#include "../model/post_withdraws_request.h"

// Enum PERIOD for WithdrawalsAndTransfersAPI_getWithdraws
typedef enum  { payconductor_api_getWithdraws_PERIOD_NULL = 0, payconductor_api_getWithdraws_PERIOD_Today, payconductor_api_getWithdraws_PERIOD_Yesterday, payconductor_api_getWithdraws_PERIOD_Last7Days, payconductor_api_getWithdraws_PERIOD_Last30Days, payconductor_api_getWithdraws_PERIOD_ThisMonth, payconductor_api_getWithdraws_PERIOD_LastMonth, payconductor_api_getWithdraws_PERIOD_ThisYear, payconductor_api_getWithdraws_PERIOD_Custom } payconductor_api_getWithdraws_period_e;


// List withdrawals
//
// Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
//
void
WithdrawalsAndTransfersAPI_getWithdraws(apiClient_t *apiClient, payconductor_api_getWithdraws_period_e period, double page, double pageSize, char endDate, char startDate, char *id);


// Get withdrawal by ID
//
// Returns the details of a specific withdrawal or transfer using its ID
//
void
WithdrawalsAndTransfersAPI_getWithdrawsById(apiClient_t *apiClient, char *id);


// Create withdrawal
//
// Create a new withdrawal or transfer to the provided payment account
//
post_withdraws_200_response_t*
WithdrawalsAndTransfersAPI_postWithdraws(apiClient_t *apiClient, post_withdraws_request_t *post_withdraws_request);


