#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_withdraws_200_response_payed_at.h"



static post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_create_internal(
    ) {
    post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_local_var = malloc(sizeof(post_withdraws_200_response_payed_at_t));
    if (!post_withdraws_200_response_payed_at_local_var) {
        return NULL;
    }

    post_withdraws_200_response_payed_at_local_var->_library_owned = 1;
    return post_withdraws_200_response_payed_at_local_var;
}

__attribute__((deprecated)) post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_create(
    ) {
    return post_withdraws_200_response_payed_at_create_internal (
        );
}

void post_withdraws_200_response_payed_at_free(post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at) {
    if(NULL == post_withdraws_200_response_payed_at){
        return ;
    }
    if(post_withdraws_200_response_payed_at->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_withdraws_200_response_payed_at_free");
        return ;
    }
    listEntry_t *listEntry;
    free(post_withdraws_200_response_payed_at);
}

cJSON *post_withdraws_200_response_payed_at_convertToJSON(post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_parseFromJSON(cJSON *post_withdraws_200_response_payed_atJSON){

    post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_local_var = NULL;


    post_withdraws_200_response_payed_at_local_var = post_withdraws_200_response_payed_at_create_internal (
        );

    return post_withdraws_200_response_payed_at_local_var;
end:
    return NULL;

}
