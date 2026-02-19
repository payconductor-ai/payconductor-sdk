#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "draft_expiration_in_seconds.h"



static draft_expiration_in_seconds_t *draft_expiration_in_seconds_create_internal(
    ) {
    draft_expiration_in_seconds_t *draft_expiration_in_seconds_local_var = malloc(sizeof(draft_expiration_in_seconds_t));
    if (!draft_expiration_in_seconds_local_var) {
        return NULL;
    }

    draft_expiration_in_seconds_local_var->_library_owned = 1;
    return draft_expiration_in_seconds_local_var;
}

__attribute__((deprecated)) draft_expiration_in_seconds_t *draft_expiration_in_seconds_create(
    ) {
    return draft_expiration_in_seconds_create_internal (
        );
}

void draft_expiration_in_seconds_free(draft_expiration_in_seconds_t *draft_expiration_in_seconds) {
    if(NULL == draft_expiration_in_seconds){
        return ;
    }
    if(draft_expiration_in_seconds->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "draft_expiration_in_seconds_free");
        return ;
    }
    listEntry_t *listEntry;
    free(draft_expiration_in_seconds);
}

cJSON *draft_expiration_in_seconds_convertToJSON(draft_expiration_in_seconds_t *draft_expiration_in_seconds) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

draft_expiration_in_seconds_t *draft_expiration_in_seconds_parseFromJSON(cJSON *draft_expiration_in_secondsJSON){

    draft_expiration_in_seconds_t *draft_expiration_in_seconds_local_var = NULL;


    draft_expiration_in_seconds_local_var = draft_expiration_in_seconds_create_internal (
        );

    return draft_expiration_in_seconds_local_var;
end:
    return NULL;

}
