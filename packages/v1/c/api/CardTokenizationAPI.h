#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/post_card_tokenization_200_response.h"
#include "../model/post_card_tokenization_request.h"


// Tokenize card
//
// Tokenize credit cards for future charges.
//
post_card_tokenization_200_response_t*
CardTokenizationAPI_postCardTokenization(apiClient_t *apiClient, post_card_tokenization_request_t *post_card_tokenization_request);


