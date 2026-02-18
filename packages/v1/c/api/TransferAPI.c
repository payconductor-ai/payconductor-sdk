#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TransferAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PERIOD for TransferAPI_getWithdraws

static char* getWithdraws_PERIOD_ToString(payconductor_api_getWithdraws_period_e PERIOD){
    char *PERIODArray[] =  { "NULL", "Today", "Yesterday", "Last7Days", "Last30Days", "ThisMonth", "LastMonth", "ThisYear", "Custom" };
    return PERIODArray[PERIOD];
}

static payconductor_api_getWithdraws_period_e getWithdraws_PERIOD_FromString(char* PERIOD){
    int stringToReturn = 0;
    char *PERIODArray[] =  { "NULL", "Today", "Yesterday", "Last7Days", "Last30Days", "ThisMonth", "LastMonth", "ThisYear", "Custom" };
    size_t sizeofArray = sizeof(PERIODArray) / sizeof(PERIODArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERIOD, PERIODArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getWithdraws_PERIOD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getWithdraws_PERIOD_convertToJSON(payconductor_api_getWithdraws_period_e PERIOD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "period", getWithdraws_PERIOD_ToString(PERIOD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getWithdraws_PERIOD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static payconductor_api_getWithdraws_period_e getWithdraws_PERIOD_parseFromJSON(cJSON* PERIODJSON) {
    payconductor_api_getWithdraws_period_e PERIODVariable = 0;
    cJSON *PERIODVar = cJSON_GetObjectItemCaseSensitive(PERIODJSON, "period");
    if(!cJSON_IsString(PERIODVar) || (PERIODVar->valuestring == NULL))
    {
        goto end;
    }
    PERIODVariable = getWithdraws_PERIOD_FromString(PERIODVar->valuestring);
    return PERIODVariable;
end:
    return 0;
}
*/


// List withdrawals
//
// Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)
//
void
TransferAPI_getWithdraws(apiClient_t *apiClient, payconductor_api_getWithdraws_period_e period, double page, double pageSize, char endDate, char startDate, char *id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/withdraws/");





    // query parameters
    char *keyQuery_period = NULL;
    payconductor_api_getWithdraws_period_e valueQuery_period ;
    keyValuePair_t *keyPairQuery_period = 0;
    if (period)
    {
        keyQuery_period = strdup("period");
        valueQuery_period = (period);
        keyPairQuery_period = keyValuePair_create(keyQuery_period, strdup(getWithdraws_PERIOD_ToString(
        valueQuery_period)));
        list_addElement(localVarQueryParameters,keyPairQuery_period);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    if (endDate)
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = (endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, &valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    if (startDate)
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = (startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, &valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_page = NULL;
    double valueQuery_page ;
    keyValuePair_t *keyPairQuery_page = 0;
    if (page)
    {
        keyQuery_page = strdup("page");
        valueQuery_page = (page);
        keyPairQuery_page = keyValuePair_create(keyQuery_page, &valueQuery_page);
        list_addElement(localVarQueryParameters,keyPairQuery_page);
    }

    // query parameters
    char *keyQuery_pageSize = NULL;
    double valueQuery_pageSize ;
    keyValuePair_t *keyPairQuery_pageSize = 0;
    if (pageSize)
    {
        keyQuery_pageSize = strdup("pageSize");
        valueQuery_pageSize = (pageSize);
        keyPairQuery_pageSize = keyValuePair_create(keyQuery_pageSize, &valueQuery_pageSize);
        list_addElement(localVarQueryParameters,keyPairQuery_pageSize);
    }

    // query parameters
    char *keyQuery_id = NULL;
    char * valueQuery_id = NULL;
    keyValuePair_t *keyPairQuery_id = 0;
    if (id)
    {
        keyQuery_id = strdup("id");
        valueQuery_id = strdup((id));
        keyPairQuery_id = keyValuePair_create(keyQuery_id, valueQuery_id);
        list_addElement(localVarQueryParameters,keyPairQuery_id);
    }
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_period){
        free(keyQuery_period);
        keyQuery_period = NULL;
    }
    if(valueQuery_period){
        free(valueQuery_period);
        valueQuery_period = NULL;
    }
    if(keyPairQuery_period){
        keyValuePair_free(keyPairQuery_period);
        keyPairQuery_period = NULL;
    }
    if(keyQuery_period){
        free(keyQuery_period);
        keyQuery_period = NULL;
    }
    if(keyPairQuery_period){
        keyValuePair_free(keyPairQuery_period);
        keyPairQuery_period = NULL;
    }
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(valueQuery_id){
        free(valueQuery_id);
        valueQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }
    if(keyQuery_id){
        free(keyQuery_id);
        keyQuery_id = NULL;
    }
    if(keyPairQuery_id){
        keyValuePair_free(keyPairQuery_id);
        keyPairQuery_id = NULL;
    }

}

// Get withdrawal by ID
//
// Returns the details of a specific withdrawal or transfer using its ID
//
void
TransferAPI_getWithdrawsById(apiClient_t *apiClient, char *id)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/withdraws/{id}");

    if(!id)
        goto end;


    // Path Params
    long sizeOfPathParams_id = strlen(id)+3 + sizeof("{ id }") - 1;
    if(id == NULL) {
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    sprintf(localVarToReplace_id, "{%s}", "id");

    localVarPath = strReplace(localVarPath, localVarToReplace_id, id);


    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    
    
    free(localVarPath);
    free(localVarToReplace_id);

}

// Create withdrawal
//
// Create a new withdrawal or transfer to the provided payment account
//
post_withdraws_200_response_t*
TransferAPI_postWithdraws(apiClient_t *apiClient, post_withdraws_request_t *post_withdraws_request)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/withdraws/");





    // Body Param
    cJSON *localVarSingleItemJSON_post_withdraws_request = NULL;
    if (post_withdraws_request != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_post_withdraws_request = post_withdraws_request_convertToJSON(post_withdraws_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_post_withdraws_request);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Response for status 200");
    //}
    //nonprimitive not container
    post_withdraws_200_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TransferAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = post_withdraws_200_response_parseFromJSON(TransferAPIlocalVarJSON);
        cJSON_Delete(TransferAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_post_withdraws_request) {
        cJSON_Delete(localVarSingleItemJSON_post_withdraws_request);
        localVarSingleItemJSON_post_withdraws_request = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

