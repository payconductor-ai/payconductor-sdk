#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_card_tokenization_request_customer.h"



static post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_create_internal(
    customer_address_t *address,
    char *document_number,
    payconductor_api_document_type__e document_type,
    char *email,
    char *name,
    char *phone_number,
    char *id
    ) {
    post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_local_var = malloc(sizeof(post_card_tokenization_request_customer_t));
    if (!post_card_tokenization_request_customer_local_var) {
        return NULL;
    }
    post_card_tokenization_request_customer_local_var->address = address;
    post_card_tokenization_request_customer_local_var->document_number = document_number;
    post_card_tokenization_request_customer_local_var->document_type = document_type;
    post_card_tokenization_request_customer_local_var->email = email;
    post_card_tokenization_request_customer_local_var->name = name;
    post_card_tokenization_request_customer_local_var->phone_number = phone_number;
    post_card_tokenization_request_customer_local_var->id = id;

    post_card_tokenization_request_customer_local_var->_library_owned = 1;
    return post_card_tokenization_request_customer_local_var;
}

__attribute__((deprecated)) post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_document_type__e document_type,
    char *email,
    char *name,
    char *phone_number,
    char *id
    ) {
    return post_card_tokenization_request_customer_create_internal (
        address,
        document_number,
        document_type,
        email,
        name,
        phone_number,
        id
        );
}

void post_card_tokenization_request_customer_free(post_card_tokenization_request_customer_t *post_card_tokenization_request_customer) {
    if(NULL == post_card_tokenization_request_customer){
        return ;
    }
    if(post_card_tokenization_request_customer->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_card_tokenization_request_customer_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_card_tokenization_request_customer->address) {
        customer_address_free(post_card_tokenization_request_customer->address);
        post_card_tokenization_request_customer->address = NULL;
    }
    if (post_card_tokenization_request_customer->document_number) {
        free(post_card_tokenization_request_customer->document_number);
        post_card_tokenization_request_customer->document_number = NULL;
    }
    if (post_card_tokenization_request_customer->email) {
        free(post_card_tokenization_request_customer->email);
        post_card_tokenization_request_customer->email = NULL;
    }
    if (post_card_tokenization_request_customer->name) {
        free(post_card_tokenization_request_customer->name);
        post_card_tokenization_request_customer->name = NULL;
    }
    if (post_card_tokenization_request_customer->phone_number) {
        free(post_card_tokenization_request_customer->phone_number);
        post_card_tokenization_request_customer->phone_number = NULL;
    }
    if (post_card_tokenization_request_customer->id) {
        free(post_card_tokenization_request_customer->id);
        post_card_tokenization_request_customer->id = NULL;
    }
    free(post_card_tokenization_request_customer);
}

cJSON *post_card_tokenization_request_customer_convertToJSON(post_card_tokenization_request_customer_t *post_card_tokenization_request_customer) {
    cJSON *item = cJSON_CreateObject();

    // post_card_tokenization_request_customer->address
    if(post_card_tokenization_request_customer->address) {
    cJSON *address_local_JSON = customer_address_convertToJSON(post_card_tokenization_request_customer->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_card_tokenization_request_customer->document_number
    if (!post_card_tokenization_request_customer->document_number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "documentNumber", post_card_tokenization_request_customer->document_number) == NULL) {
    goto fail; //String
    }


    // post_card_tokenization_request_customer->document_type
    if (payconductor_api_document_type__NULL == post_card_tokenization_request_customer->document_type) {
        goto fail;
    }
    cJSON *document_type_local_JSON = document_type_convertToJSON(post_card_tokenization_request_customer->document_type);
    if(document_type_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "documentType", document_type_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // post_card_tokenization_request_customer->email
    if (!post_card_tokenization_request_customer->email) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "email", post_card_tokenization_request_customer->email) == NULL) {
    goto fail; //String
    }


    // post_card_tokenization_request_customer->name
    if (!post_card_tokenization_request_customer->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", post_card_tokenization_request_customer->name) == NULL) {
    goto fail; //String
    }


    // post_card_tokenization_request_customer->phone_number
    if(post_card_tokenization_request_customer->phone_number) {
    if(cJSON_AddStringToObject(item, "phoneNumber", post_card_tokenization_request_customer->phone_number) == NULL) {
    goto fail; //String
    }
    }


    // post_card_tokenization_request_customer->id
    if (!post_card_tokenization_request_customer->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_card_tokenization_request_customer->id) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_parseFromJSON(cJSON *post_card_tokenization_request_customerJSON){

    post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_local_var = NULL;

    // define the local variable for post_card_tokenization_request_customer->address
    customer_address_t *address_local_nonprim = NULL;

    // define the local variable for post_card_tokenization_request_customer->document_type
    payconductor_api_document_type__e document_type_local_nonprim = 0;

    // post_card_tokenization_request_customer->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = customer_address_parseFromJSON(address); //nonprimitive
    }

    // post_card_tokenization_request_customer->document_number
    cJSON *document_number = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "documentNumber");
    if (cJSON_IsNull(document_number)) {
        document_number = NULL;
    }
    if (!document_number) {
        goto end;
    }

    
    if(!cJSON_IsString(document_number))
    {
    goto end; //String
    }

    // post_card_tokenization_request_customer->document_type
    cJSON *document_type = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "documentType");
    if (cJSON_IsNull(document_type)) {
        document_type = NULL;
    }
    if (!document_type) {
        goto end;
    }

    
    document_type_local_nonprim = document_type_parseFromJSON(document_type); //custom

    // post_card_tokenization_request_customer->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "email");
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

    // post_card_tokenization_request_customer->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "name");
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

    // post_card_tokenization_request_customer->phone_number
    cJSON *phone_number = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "phoneNumber");
    if (cJSON_IsNull(phone_number)) {
        phone_number = NULL;
    }
    if (phone_number) { 
    if(!cJSON_IsString(phone_number) && !cJSON_IsNull(phone_number))
    {
    goto end; //String
    }
    }

    // post_card_tokenization_request_customer->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customerJSON, "id");
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


    post_card_tokenization_request_customer_local_var = post_card_tokenization_request_customer_create_internal (
        address ? address_local_nonprim : NULL,
        strdup(document_number->valuestring),
        document_type_local_nonprim,
        strdup(email->valuestring),
        strdup(name->valuestring),
        phone_number && !cJSON_IsNull(phone_number) ? strdup(phone_number->valuestring) : NULL,
        strdup(id->valuestring)
        );

    return post_card_tokenization_request_customer_local_var;
end:
    if (address_local_nonprim) {
        customer_address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    if (document_type_local_nonprim) {
        document_type_local_nonprim = 0;
    }
    return NULL;

}
