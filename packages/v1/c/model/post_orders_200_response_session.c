#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_session.h"



static post_orders_200_response_session_t *post_orders_200_response_session_create_internal(
    char *session_id
    ) {
    post_orders_200_response_session_t *post_orders_200_response_session_local_var = malloc(sizeof(post_orders_200_response_session_t));
    if (!post_orders_200_response_session_local_var) {
        return NULL;
    }
    post_orders_200_response_session_local_var->session_id = session_id;

    post_orders_200_response_session_local_var->_library_owned = 1;
    return post_orders_200_response_session_local_var;
}

__attribute__((deprecated)) post_orders_200_response_session_t *post_orders_200_response_session_create(
    char *session_id
    ) {
    return post_orders_200_response_session_create_internal (
        session_id
        );
}

void post_orders_200_response_session_free(post_orders_200_response_session_t *post_orders_200_response_session) {
    if(NULL == post_orders_200_response_session){
        return ;
    }
    if(post_orders_200_response_session->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_session_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_session->session_id) {
        free(post_orders_200_response_session->session_id);
        post_orders_200_response_session->session_id = NULL;
    }
    free(post_orders_200_response_session);
}

cJSON *post_orders_200_response_session_convertToJSON(post_orders_200_response_session_t *post_orders_200_response_session) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_session->session_id
    if (!post_orders_200_response_session->session_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "sessionId", post_orders_200_response_session->session_id) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_200_response_session_t *post_orders_200_response_session_parseFromJSON(cJSON *post_orders_200_response_sessionJSON){

    post_orders_200_response_session_t *post_orders_200_response_session_local_var = NULL;

    // post_orders_200_response_session->session_id
    cJSON *session_id = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_sessionJSON, "sessionId");
    if (cJSON_IsNull(session_id)) {
        session_id = NULL;
    }
    if (!session_id) {
        goto end;
    }

    
    if(!cJSON_IsString(session_id))
    {
    goto end; //String
    }


    post_orders_200_response_session_local_var = post_orders_200_response_session_create_internal (
        strdup(session_id->valuestring)
        );

    return post_orders_200_response_session_local_var;
end:
    return NULL;

}
