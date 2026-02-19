#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/post_withdraws_200_response.h"
#include "../model/post_withdraws_request.h"


// List withdrawals
//
// Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
//
void
TransfersAPI_getWithdraws(apiClient_t *apiClient, double page, double pageSize, char endDate, char startDate, char *id);


// Get withdrawal by ID
//
// Returns the details of a specific withdrawal or transfer using its ID
//
void
TransfersAPI_getWithdrawsById(apiClient_t *apiClient, char *id);


// Create withdrawal
//
// Create a new withdrawal or transfer to the provided payment account
//
post_withdraws_200_response_t*
TransfersAPI_postWithdraws(apiClient_t *apiClient, post_withdraws_request_t *post_withdraws_request);


