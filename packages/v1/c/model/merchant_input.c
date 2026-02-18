#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "merchant_input.h"



static merchant_input_t *merchant_input_create_internal(
    char *document,
    char *email,
    char *name
    ) {
    merchant_input_t *merchant_input_local_var = malloc(sizeof(merchant_input_t));
    if (!merchant_input_local_var) {
        return NULL;
    }
    merchant_input_local_var->document = document;
    merchant_input_local_var->email = email;
    merchant_input_local_var->name = name;

    merchant_input_local_var->_library_owned = 1;
    return merchant_input_local_var;
}

__attribute__((deprecated)) merchant_input_t *merchant_input_create(
    char *document,
    char *email,
    char *name
    ) {
    return merchant_input_create_internal (
        document,
        email,
        name
        );
}

void merchant_input_free(merchant_input_t *merchant_input) {
    if(NULL == merchant_input){
        return ;
    }
    if(merchant_input->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "merchant_input_free");
        return ;
    }
    listEntry_t *listEntry;
    if (merchant_input->document) {
        free(merchant_input->document);
        merchant_input->document = NULL;
    }
    if (merchant_input->email) {
        free(merchant_input->email);
        merchant_input->email = NULL;
    }
    if (merchant_input->name) {
        free(merchant_input->name);
        merchant_input->name = NULL;
    }
    free(merchant_input);
}

cJSON *merchant_input_convertToJSON(merchant_input_t *merchant_input) {
    cJSON *item = cJSON_CreateObject();

    // merchant_input->document
    if (!merchant_input->document) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "document", merchant_input->document) == NULL) {
    goto fail; //String
    }


    // merchant_input->email
    if (!merchant_input->email) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "email", merchant_input->email) == NULL) {
    goto fail; //String
    }


    // merchant_input->name
    if (!merchant_input->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", merchant_input->name) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

merchant_input_t *merchant_input_parseFromJSON(cJSON *merchant_inputJSON){

    merchant_input_t *merchant_input_local_var = NULL;

    // merchant_input->document
    cJSON *document = cJSON_GetObjectItemCaseSensitive(merchant_inputJSON, "document");
    if (cJSON_IsNull(document)) {
        document = NULL;
    }
    if (!document) {
        goto end;
    }

    
    if(!cJSON_IsString(document))
    {
    goto end; //String
    }

    // merchant_input->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(merchant_inputJSON, "email");
    if (cJSON_IsNull(email)) {
        email = NULL;
    }
    if (!email) {
        goto end;
    }

    
    if(!cJSON_IsString(email))
    {
    goto end; //String
    }

    // merchant_input->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(merchant_inputJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (!name) {
        goto end;
    }

    
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }


    merchant_input_local_var = merchant_input_create_internal (
        strdup(document->valuestring),
        strdup(email->valuestring),
        strdup(name->valuestring)
        );

    return merchant_input_local_var;
end:
    return NULL;

}
