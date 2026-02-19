#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_request.h"



static post_orders_request_t *post_orders_request_create_internal(
    double charge_amount,
    char *client_ip,
    customer_t *customer,
    double discount_amount,
    char *external_id,
    post_orders_request_fingerprints_t *fingerprints,
    list_t *items,
    merchant_input_t *merchant,
    post_orders_request_payment_t *payment,
    double split_amount_total,
    post_orders_request_session_t *session,
    double shipping_fee,
    double tax_fee,
    object_t *metadata
    ) {
    post_orders_request_t *post_orders_request_local_var = malloc(sizeof(post_orders_request_t));
    if (!post_orders_request_local_var) {
        return NULL;
    }
    post_orders_request_local_var->charge_amount = charge_amount;
    post_orders_request_local_var->client_ip = client_ip;
    post_orders_request_local_var->customer = customer;
    post_orders_request_local_var->discount_amount = discount_amount;
    post_orders_request_local_var->external_id = external_id;
    post_orders_request_local_var->fingerprints = fingerprints;
    post_orders_request_local_var->items = items;
    post_orders_request_local_var->merchant = merchant;
    post_orders_request_local_var->payment = payment;
    post_orders_request_local_var->split_amount_total = split_amount_total;
    post_orders_request_local_var->session = session;
    post_orders_request_local_var->shipping_fee = shipping_fee;
    post_orders_request_local_var->tax_fee = tax_fee;
    post_orders_request_local_var->metadata = metadata;

    post_orders_request_local_var->_library_owned = 1;
    return post_orders_request_local_var;
}

__attribute__((deprecated)) post_orders_request_t *post_orders_request_create(
    double charge_amount,
    char *client_ip,
    customer_t *customer,
    double discount_amount,
    char *external_id,
    post_orders_request_fingerprints_t *fingerprints,
    list_t *items,
    merchant_input_t *merchant,
    post_orders_request_payment_t *payment,
    double split_amount_total,
    post_orders_request_session_t *session,
    double shipping_fee,
    double tax_fee,
    object_t *metadata
    ) {
    return post_orders_request_create_internal (
        charge_amount,
        client_ip,
        customer,
        discount_amount,
        external_id,
        fingerprints,
        items,
        merchant,
        payment,
        split_amount_total,
        session,
        shipping_fee,
        tax_fee,
        metadata
        );
}

void post_orders_request_free(post_orders_request_t *post_orders_request) {
    if(NULL == post_orders_request){
        return ;
    }
    if(post_orders_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_request->client_ip) {
        free(post_orders_request->client_ip);
        post_orders_request->client_ip = NULL;
    }
    if (post_orders_request->customer) {
        customer_free(post_orders_request->customer);
        post_orders_request->customer = NULL;
    }
    if (post_orders_request->external_id) {
        free(post_orders_request->external_id);
        post_orders_request->external_id = NULL;
    }
    if (post_orders_request->fingerprints) {
        post_orders_request_fingerprints_free(post_orders_request->fingerprints);
        post_orders_request->fingerprints = NULL;
    }
    if (post_orders_request->items) {
        list_ForEach(listEntry, post_orders_request->items) {
            post_orders_request_items_inner_free(listEntry->data);
        }
        list_freeList(post_orders_request->items);
        post_orders_request->items = NULL;
    }
    if (post_orders_request->merchant) {
        merchant_input_free(post_orders_request->merchant);
        post_orders_request->merchant = NULL;
    }
    if (post_orders_request->payment) {
        post_orders_request_payment_free(post_orders_request->payment);
        post_orders_request->payment = NULL;
    }
    if (post_orders_request->session) {
        post_orders_request_session_free(post_orders_request->session);
        post_orders_request->session = NULL;
    }
    if (post_orders_request->metadata) {
        object_free(post_orders_request->metadata);
        post_orders_request->metadata = NULL;
    }
    free(post_orders_request);
}

cJSON *post_orders_request_convertToJSON(post_orders_request_t *post_orders_request) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_request->charge_amount
    if (!post_orders_request->charge_amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "chargeAmount", post_orders_request->charge_amount) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_request->client_ip
    if (!post_orders_request->client_ip) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "clientIp", post_orders_request->client_ip) == NULL) {
    goto fail; //String
    }


    // post_orders_request->customer
    if (!post_orders_request->customer) {
        goto fail;
    }
    cJSON *customer_local_JSON = customer_convertToJSON(post_orders_request->customer);
    if(customer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customer", customer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_orders_request->discount_amount
    if (!post_orders_request->discount_amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "discountAmount", post_orders_request->discount_amount) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_request->external_id
    if (!post_orders_request->external_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalId", post_orders_request->external_id) == NULL) {
    goto fail; //String
    }


    // post_orders_request->fingerprints
    if(post_orders_request->fingerprints) {
    cJSON *fingerprints_local_JSON = post_orders_request_fingerprints_convertToJSON(post_orders_request->fingerprints);
    if(fingerprints_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fingerprints", fingerprints_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_request->items
    if(post_orders_request->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (post_orders_request->items) {
    list_ForEach(itemsListEntry, post_orders_request->items) {
    cJSON *itemLocal = post_orders_request_items_inner_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // post_orders_request->merchant
    if(post_orders_request->merchant) {
    cJSON *merchant_local_JSON = merchant_input_convertToJSON(post_orders_request->merchant);
    if(merchant_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "merchant", merchant_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_request->payment
    if (!post_orders_request->payment) {
        goto fail;
    }
    cJSON *payment_local_JSON = post_orders_request_payment_convertToJSON(post_orders_request->payment);
    if(payment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "payment", payment_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_orders_request->split_amount_total
    if(post_orders_request->split_amount_total) {
    if(cJSON_AddNumberToObject(item, "splitAmountTotal", post_orders_request->split_amount_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // post_orders_request->session
    if(post_orders_request->session) {
    cJSON *session_local_JSON = post_orders_request_session_convertToJSON(post_orders_request->session);
    if(session_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "session", session_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_request->shipping_fee
    if (!post_orders_request->shipping_fee) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "shippingFee", post_orders_request->shipping_fee) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_request->tax_fee
    if (!post_orders_request->tax_fee) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "taxFee", post_orders_request->tax_fee) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_request->metadata
    if(post_orders_request->metadata) {
    cJSON *metadata_object = object_convertToJSON(post_orders_request->metadata);
    if(metadata_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "metadata", metadata_object);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_request_t *post_orders_request_parseFromJSON(cJSON *post_orders_requestJSON){

    post_orders_request_t *post_orders_request_local_var = NULL;

    // define the local variable for post_orders_request->customer
    customer_t *customer_local_nonprim = NULL;

    // define the local variable for post_orders_request->fingerprints
    post_orders_request_fingerprints_t *fingerprints_local_nonprim = NULL;

    // define the local list for post_orders_request->items
    list_t *itemsList = NULL;

    // define the local variable for post_orders_request->merchant
    merchant_input_t *merchant_local_nonprim = NULL;

    // define the local variable for post_orders_request->payment
    post_orders_request_payment_t *payment_local_nonprim = NULL;

    // define the local variable for post_orders_request->session
    post_orders_request_session_t *session_local_nonprim = NULL;

    // post_orders_request->charge_amount
    cJSON *charge_amount = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "chargeAmount");
    if (cJSON_IsNull(charge_amount)) {
        charge_amount = NULL;
    }
    if (!charge_amount) {
        goto end;
    }

    
    if(!cJSON_IsNumber(charge_amount))
    {
    goto end; //Numeric
    }

    // post_orders_request->client_ip
    cJSON *client_ip = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "clientIp");
    if (cJSON_IsNull(client_ip)) {
        client_ip = NULL;
    }
    if (!client_ip) {
        goto end;
    }

    
    if(!cJSON_IsString(client_ip))
    {
    goto end; //String
    }

    // post_orders_request->customer
    cJSON *customer = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "customer");
    if (cJSON_IsNull(customer)) {
        customer = NULL;
    }
    if (!customer) {
        goto end;
    }

    
    customer_local_nonprim = customer_parseFromJSON(customer); //nonprimitive

    // post_orders_request->discount_amount
    cJSON *discount_amount = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "discountAmount");
    if (cJSON_IsNull(discount_amount)) {
        discount_amount = NULL;
    }
    if (!discount_amount) {
        goto end;
    }

    
    if(!cJSON_IsNumber(discount_amount))
    {
    goto end; //Numeric
    }

    // post_orders_request->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (!external_id) {
        goto end;
    }

    
    if(!cJSON_IsString(external_id))
    {
    goto end; //String
    }

    // post_orders_request->fingerprints
    cJSON *fingerprints = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "fingerprints");
    if (cJSON_IsNull(fingerprints)) {
        fingerprints = NULL;
    }
    if (fingerprints) { 
    fingerprints_local_nonprim = post_orders_request_fingerprints_parseFromJSON(fingerprints); //nonprimitive
    }

    // post_orders_request->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        post_orders_request_items_inner_t *itemsItem = post_orders_request_items_inner_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // post_orders_request->merchant
    cJSON *merchant = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "merchant");
    if (cJSON_IsNull(merchant)) {
        merchant = NULL;
    }
    if (merchant) { 
    merchant_local_nonprim = merchant_input_parseFromJSON(merchant); //nonprimitive
    }

    // post_orders_request->payment
    cJSON *payment = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "payment");
    if (cJSON_IsNull(payment)) {
        payment = NULL;
    }
    if (!payment) {
        goto end;
    }

    
    payment_local_nonprim = post_orders_request_payment_parseFromJSON(payment); //nonprimitive

    // post_orders_request->split_amount_total
    cJSON *split_amount_total = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "splitAmountTotal");
    if (cJSON_IsNull(split_amount_total)) {
        split_amount_total = NULL;
    }
    if (split_amount_total) { 
    if(!cJSON_IsNumber(split_amount_total))
    {
    goto end; //Numeric
    }
    }

    // post_orders_request->session
    cJSON *session = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "session");
    if (cJSON_IsNull(session)) {
        session = NULL;
    }
    if (session) { 
    session_local_nonprim = post_orders_request_session_parseFromJSON(session); //nonprimitive
    }

    // post_orders_request->shipping_fee
    cJSON *shipping_fee = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "shippingFee");
    if (cJSON_IsNull(shipping_fee)) {
        shipping_fee = NULL;
    }
    if (!shipping_fee) {
        goto end;
    }

    
    if(!cJSON_IsNumber(shipping_fee))
    {
    goto end; //Numeric
    }

    // post_orders_request->tax_fee
    cJSON *tax_fee = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "taxFee");
    if (cJSON_IsNull(tax_fee)) {
        tax_fee = NULL;
    }
    if (!tax_fee) {
        goto end;
    }

    
    if(!cJSON_IsNumber(tax_fee))
    {
    goto end; //Numeric
    }

    // post_orders_request->metadata
    cJSON *metadata = cJSON_GetObjectItemCaseSensitive(post_orders_requestJSON, "metadata");
    if (cJSON_IsNull(metadata)) {
        metadata = NULL;
    }
    object_t *metadata_local_object = NULL;
    if (metadata) { 
    metadata_local_object = object_parseFromJSON(metadata); //object
    }


    post_orders_request_local_var = post_orders_request_create_internal (
        charge_amount->valuedouble,
        strdup(client_ip->valuestring),
        customer_local_nonprim,
        discount_amount->valuedouble,
        strdup(external_id->valuestring),
        fingerprints ? fingerprints_local_nonprim : NULL,
        items ? itemsList : NULL,
        merchant ? merchant_local_nonprim : NULL,
        payment_local_nonprim,
        split_amount_total ? split_amount_total->valuedouble : 0,
        session ? session_local_nonprim : NULL,
        shipping_fee->valuedouble,
        tax_fee->valuedouble,
        metadata ? metadata_local_object : NULL
        );

    return post_orders_request_local_var;
end:
    if (customer_local_nonprim) {
        customer_free(customer_local_nonprim);
        customer_local_nonprim = NULL;
    }
    if (fingerprints_local_nonprim) {
        post_orders_request_fingerprints_free(fingerprints_local_nonprim);
        fingerprints_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            post_orders_request_items_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (merchant_local_nonprim) {
        merchant_input_free(merchant_local_nonprim);
        merchant_local_nonprim = NULL;
    }
    if (payment_local_nonprim) {
        post_orders_request_payment_free(payment_local_nonprim);
        payment_local_nonprim = NULL;
    }
    if (session_local_nonprim) {
        post_orders_request_session_free(session_local_nonprim);
        session_local_nonprim = NULL;
    }
    return NULL;

}
