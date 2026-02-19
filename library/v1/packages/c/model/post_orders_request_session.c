#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_request_session.h"



static post_orders_request_session_t *post_orders_request_session_create_internal(
    double expires_in_minutes,
    char *checkout_url,
    char *session_id,
    char *external_session_id
    ) {
    post_orders_request_session_t *post_orders_request_session_local_var = malloc(sizeof(post_orders_request_session_t));
    if (!post_orders_request_session_local_var) {
        return NULL;
    }
    post_orders_request_session_local_var->expires_in_minutes = expires_in_minutes;
    post_orders_request_session_local_var->checkout_url = checkout_url;
    post_orders_request_session_local_var->session_id = session_id;
    post_orders_request_session_local_var->external_session_id = external_session_id;

    post_orders_request_session_local_var->_library_owned = 1;
    return post_orders_request_session_local_var;
}

__attribute__((deprecated)) post_orders_request_session_t *post_orders_request_session_create(
    double expires_in_minutes,
    char *checkout_url,
    char *session_id,
    char *external_session_id
    ) {
    return post_orders_request_session_create_internal (
        expires_in_minutes,
        checkout_url,
        session_id,
        external_session_id
        );
}

void post_orders_request_session_free(post_orders_request_session_t *post_orders_request_session) {
    if(NULL == post_orders_request_session){
        return ;
    }
    if(post_orders_request_session->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_request_session_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_request_session->checkout_url) {
        free(post_orders_request_session->checkout_url);
        post_orders_request_session->checkout_url = NULL;
    }
    if (post_orders_request_session->session_id) {
        free(post_orders_request_session->session_id);
        post_orders_request_session->session_id = NULL;
    }
    if (post_orders_request_session->external_session_id) {
        free(post_orders_request_session->external_session_id);
        post_orders_request_session->external_session_id = NULL;
    }
    free(post_orders_request_session);
}

cJSON *post_orders_request_session_convertToJSON(post_orders_request_session_t *post_orders_request_session) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_request_session->expires_in_minutes
    if(post_orders_request_session->expires_in_minutes) {
    if(cJSON_AddNumberToObject(item, "expiresInMinutes", post_orders_request_session->expires_in_minutes) == NULL) {
    goto fail; //Numeric
    }
    }


    // post_orders_request_session->checkout_url
    if(post_orders_request_session->checkout_url) {
    if(cJSON_AddStringToObject(item, "checkoutUrl", post_orders_request_session->checkout_url) == NULL) {
    goto fail; //String
    }
    }


    // post_orders_request_session->session_id
    if(post_orders_request_session->session_id) {
    if(cJSON_AddStringToObject(item, "sessionId", post_orders_request_session->session_id) == NULL) {
    goto fail; //String
    }
    }


    // post_orders_request_session->external_session_id
    if(post_orders_request_session->external_session_id) {
    if(cJSON_AddStringToObject(item, "externalSessionId", post_orders_request_session->external_session_id) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_request_session_t *post_orders_request_session_parseFromJSON(cJSON *post_orders_request_sessionJSON){

    post_orders_request_session_t *post_orders_request_session_local_var = NULL;

    // post_orders_request_session->expires_in_minutes
    cJSON *expires_in_minutes = cJSON_GetObjectItemCaseSensitive(post_orders_request_sessionJSON, "expiresInMinutes");
    if (cJSON_IsNull(expires_in_minutes)) {
        expires_in_minutes = NULL;
    }
    if (expires_in_minutes) { 
    if(!cJSON_IsNumber(expires_in_minutes))
    {
    goto end; //Numeric
    }
    }

    // post_orders_request_session->checkout_url
    cJSON *checkout_url = cJSON_GetObjectItemCaseSensitive(post_orders_request_sessionJSON, "checkoutUrl");
    if (cJSON_IsNull(checkout_url)) {
        checkout_url = NULL;
    }
    if (checkout_url) { 
    if(!cJSON_IsString(checkout_url) && !cJSON_IsNull(checkout_url))
    {
    goto end; //String
    }
    }

    // post_orders_request_session->session_id
    cJSON *session_id = cJSON_GetObjectItemCaseSensitive(post_orders_request_sessionJSON, "sessionId");
    if (cJSON_IsNull(session_id)) {
        session_id = NULL;
    }
    if (session_id) { 
    if(!cJSON_IsString(session_id) && !cJSON_IsNull(session_id))
    {
    goto end; //String
    }
    }

    // post_orders_request_session->external_session_id
    cJSON *external_session_id = cJSON_GetObjectItemCaseSensitive(post_orders_request_sessionJSON, "externalSessionId");
    if (cJSON_IsNull(external_session_id)) {
        external_session_id = NULL;
    }
    if (external_session_id) { 
    if(!cJSON_IsString(external_session_id) && !cJSON_IsNull(external_session_id))
    {
    goto end; //String
    }
    }


    post_orders_request_session_local_var = post_orders_request_session_create_internal (
        expires_in_minutes ? expires_in_minutes->valuedouble : 0,
        checkout_url && !cJSON_IsNull(checkout_url) ? strdup(checkout_url->valuestring) : NULL,
        session_id && !cJSON_IsNull(session_id) ? strdup(session_id->valuestring) : NULL,
        external_session_id && !cJSON_IsNull(external_session_id) ? strdup(external_session_id->valuestring) : NULL
        );

    return post_orders_request_session_local_var;
end:
    return NULL;

}
