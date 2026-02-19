#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_withdraws_200_response_payout_account.h"


char* post_withdraws_200_response_payout_account_pix_type_ToString(payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_e pix_type) {
    char* pix_typeArray[] =  { "NULL", "Cpf", "Cnpj", "Email", "Phone", "Random" };
    return pix_typeArray[pix_type];
}

payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_e post_withdraws_200_response_payout_account_pix_type_FromString(char* pix_type){
    int stringToReturn = 0;
    char *pix_typeArray[] =  { "NULL", "Cpf", "Cnpj", "Email", "Phone", "Random" };
    size_t sizeofArray = sizeof(pix_typeArray) / sizeof(pix_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(pix_type, pix_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_create_internal(
    char *id,
    char *owner_document,
    char *owner_name,
    char *pix_key,
    payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_e pix_type
    ) {
    post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_local_var = malloc(sizeof(post_withdraws_200_response_payout_account_t));
    if (!post_withdraws_200_response_payout_account_local_var) {
        return NULL;
    }
    post_withdraws_200_response_payout_account_local_var->id = id;
    post_withdraws_200_response_payout_account_local_var->owner_document = owner_document;
    post_withdraws_200_response_payout_account_local_var->owner_name = owner_name;
    post_withdraws_200_response_payout_account_local_var->pix_key = pix_key;
    post_withdraws_200_response_payout_account_local_var->pix_type = pix_type;

    post_withdraws_200_response_payout_account_local_var->_library_owned = 1;
    return post_withdraws_200_response_payout_account_local_var;
}

__attribute__((deprecated)) post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_create(
    char *id,
    char *owner_document,
    char *owner_name,
    char *pix_key,
    payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_e pix_type
    ) {
    return post_withdraws_200_response_payout_account_create_internal (
        id,
        owner_document,
        owner_name,
        pix_key,
        pix_type
        );
}

void post_withdraws_200_response_payout_account_free(post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account) {
    if(NULL == post_withdraws_200_response_payout_account){
        return ;
    }
    if(post_withdraws_200_response_payout_account->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_withdraws_200_response_payout_account_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_withdraws_200_response_payout_account->id) {
        free(post_withdraws_200_response_payout_account->id);
        post_withdraws_200_response_payout_account->id = NULL;
    }
    if (post_withdraws_200_response_payout_account->owner_document) {
        free(post_withdraws_200_response_payout_account->owner_document);
        post_withdraws_200_response_payout_account->owner_document = NULL;
    }
    if (post_withdraws_200_response_payout_account->owner_name) {
        free(post_withdraws_200_response_payout_account->owner_name);
        post_withdraws_200_response_payout_account->owner_name = NULL;
    }
    if (post_withdraws_200_response_payout_account->pix_key) {
        free(post_withdraws_200_response_payout_account->pix_key);
        post_withdraws_200_response_payout_account->pix_key = NULL;
    }
    free(post_withdraws_200_response_payout_account);
}

cJSON *post_withdraws_200_response_payout_account_convertToJSON(post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account) {
    cJSON *item = cJSON_CreateObject();

    // post_withdraws_200_response_payout_account->id
    if (!post_withdraws_200_response_payout_account->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_withdraws_200_response_payout_account->id) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response_payout_account->owner_document
    if (!post_withdraws_200_response_payout_account->owner_document) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "ownerDocument", post_withdraws_200_response_payout_account->owner_document) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response_payout_account->owner_name
    if (!post_withdraws_200_response_payout_account->owner_name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "ownerName", post_withdraws_200_response_payout_account->owner_name) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response_payout_account->pix_key
    if (!post_withdraws_200_response_payout_account->pix_key) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "pixKey", post_withdraws_200_response_payout_account->pix_key) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response_payout_account->pix_type
    if (payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_NULL == post_withdraws_200_response_payout_account->pix_type) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "pixType", post_withdraws_200_response_payout_account_pix_type_ToString(post_withdraws_200_response_payout_account->pix_type)) == NULL)
    {
    goto fail; //Enum
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_parseFromJSON(cJSON *post_withdraws_200_response_payout_accountJSON){

    post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_local_var = NULL;

    // post_withdraws_200_response_payout_account->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_response_payout_accountJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // post_withdraws_200_response_payout_account->owner_document
    cJSON *owner_document = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_response_payout_accountJSON, "ownerDocument");
    if (cJSON_IsNull(owner_document)) {
        owner_document = NULL;
    }
    if (!owner_document) {
        goto end;
    }

    
    if(!cJSON_IsString(owner_document))
    {
    goto end; //String
    }

    // post_withdraws_200_response_payout_account->owner_name
    cJSON *owner_name = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_response_payout_accountJSON, "ownerName");
    if (cJSON_IsNull(owner_name)) {
        owner_name = NULL;
    }
    if (!owner_name) {
        goto end;
    }

    
    if(!cJSON_IsString(owner_name))
    {
    goto end; //String
    }

    // post_withdraws_200_response_payout_account->pix_key
    cJSON *pix_key = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_response_payout_accountJSON, "pixKey");
    if (cJSON_IsNull(pix_key)) {
        pix_key = NULL;
    }
    if (!pix_key) {
        goto end;
    }

    
    if(!cJSON_IsString(pix_key))
    {
    goto end; //String
    }

    // post_withdraws_200_response_payout_account->pix_type
    cJSON *pix_type = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_response_payout_accountJSON, "pixType");
    if (cJSON_IsNull(pix_type)) {
        pix_type = NULL;
    }
    if (!pix_type) {
        goto end;
    }

    payconductor_api_post_withdraws_200_response_payout_account_PIXTYPE_e pix_typeVariable;
    
    if(!cJSON_IsString(pix_type))
    {
    goto end; //Enum
    }
    pix_typeVariable = post_withdraws_200_response_payout_account_pix_type_FromString(pix_type->valuestring);


    post_withdraws_200_response_payout_account_local_var = post_withdraws_200_response_payout_account_create_internal (
        strdup(id->valuestring),
        strdup(owner_document->valuestring),
        strdup(owner_name->valuestring),
        strdup(pix_key->valuestring),
        pix_typeVariable
        );

    return post_withdraws_200_response_payout_account_local_var;
end:
    return NULL;

}
