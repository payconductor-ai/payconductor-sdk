#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_request_fingerprints.h"



static post_orders_request_fingerprints_t *post_orders_request_fingerprints_create_internal(
    char *threat_metrix_fingerprint_id
    ) {
    post_orders_request_fingerprints_t *post_orders_request_fingerprints_local_var = malloc(sizeof(post_orders_request_fingerprints_t));
    if (!post_orders_request_fingerprints_local_var) {
        return NULL;
    }
    post_orders_request_fingerprints_local_var->threat_metrix_fingerprint_id = threat_metrix_fingerprint_id;

    post_orders_request_fingerprints_local_var->_library_owned = 1;
    return post_orders_request_fingerprints_local_var;
}

__attribute__((deprecated)) post_orders_request_fingerprints_t *post_orders_request_fingerprints_create(
    char *threat_metrix_fingerprint_id
    ) {
    return post_orders_request_fingerprints_create_internal (
        threat_metrix_fingerprint_id
        );
}

void post_orders_request_fingerprints_free(post_orders_request_fingerprints_t *post_orders_request_fingerprints) {
    if(NULL == post_orders_request_fingerprints){
        return ;
    }
    if(post_orders_request_fingerprints->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_request_fingerprints_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_request_fingerprints->threat_metrix_fingerprint_id) {
        free(post_orders_request_fingerprints->threat_metrix_fingerprint_id);
        post_orders_request_fingerprints->threat_metrix_fingerprint_id = NULL;
    }
    free(post_orders_request_fingerprints);
}

cJSON *post_orders_request_fingerprints_convertToJSON(post_orders_request_fingerprints_t *post_orders_request_fingerprints) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_request_fingerprints->threat_metrix_fingerprint_id
    if(post_orders_request_fingerprints->threat_metrix_fingerprint_id) {
    if(cJSON_AddStringToObject(item, "threatMetrixFingerprintId", post_orders_request_fingerprints->threat_metrix_fingerprint_id) == NULL) {
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

post_orders_request_fingerprints_t *post_orders_request_fingerprints_parseFromJSON(cJSON *post_orders_request_fingerprintsJSON){

    post_orders_request_fingerprints_t *post_orders_request_fingerprints_local_var = NULL;

    // post_orders_request_fingerprints->threat_metrix_fingerprint_id
    cJSON *threat_metrix_fingerprint_id = cJSON_GetObjectItemCaseSensitive(post_orders_request_fingerprintsJSON, "threatMetrixFingerprintId");
    if (cJSON_IsNull(threat_metrix_fingerprint_id)) {
        threat_metrix_fingerprint_id = NULL;
    }
    if (threat_metrix_fingerprint_id) { 
    if(!cJSON_IsString(threat_metrix_fingerprint_id) && !cJSON_IsNull(threat_metrix_fingerprint_id))
    {
    goto end; //String
    }
    }


    post_orders_request_fingerprints_local_var = post_orders_request_fingerprints_create_internal (
        threat_metrix_fingerprint_id && !cJSON_IsNull(threat_metrix_fingerprint_id) ? strdup(threat_metrix_fingerprint_id->valuestring) : NULL
        );

    return post_orders_request_fingerprints_local_var;
end:
    return NULL;

}
