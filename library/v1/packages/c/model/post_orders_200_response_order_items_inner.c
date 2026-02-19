#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_order_items_inner.h"



static post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_create_internal(
    char *external_id,
    char *id,
    char *name,
    double qty,
    double total_amount,
    double total_net_amount,
    double unity_price
    ) {
    post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_local_var = malloc(sizeof(post_orders_200_response_order_items_inner_t));
    if (!post_orders_200_response_order_items_inner_local_var) {
        return NULL;
    }
    post_orders_200_response_order_items_inner_local_var->external_id = external_id;
    post_orders_200_response_order_items_inner_local_var->id = id;
    post_orders_200_response_order_items_inner_local_var->name = name;
    post_orders_200_response_order_items_inner_local_var->qty = qty;
    post_orders_200_response_order_items_inner_local_var->total_amount = total_amount;
    post_orders_200_response_order_items_inner_local_var->total_net_amount = total_net_amount;
    post_orders_200_response_order_items_inner_local_var->unity_price = unity_price;

    post_orders_200_response_order_items_inner_local_var->_library_owned = 1;
    return post_orders_200_response_order_items_inner_local_var;
}

__attribute__((deprecated)) post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_create(
    char *external_id,
    char *id,
    char *name,
    double qty,
    double total_amount,
    double total_net_amount,
    double unity_price
    ) {
    return post_orders_200_response_order_items_inner_create_internal (
        external_id,
        id,
        name,
        qty,
        total_amount,
        total_net_amount,
        unity_price
        );
}

void post_orders_200_response_order_items_inner_free(post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner) {
    if(NULL == post_orders_200_response_order_items_inner){
        return ;
    }
    if(post_orders_200_response_order_items_inner->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_order_items_inner_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_order_items_inner->external_id) {
        free(post_orders_200_response_order_items_inner->external_id);
        post_orders_200_response_order_items_inner->external_id = NULL;
    }
    if (post_orders_200_response_order_items_inner->id) {
        free(post_orders_200_response_order_items_inner->id);
        post_orders_200_response_order_items_inner->id = NULL;
    }
    if (post_orders_200_response_order_items_inner->name) {
        free(post_orders_200_response_order_items_inner->name);
        post_orders_200_response_order_items_inner->name = NULL;
    }
    free(post_orders_200_response_order_items_inner);
}

cJSON *post_orders_200_response_order_items_inner_convertToJSON(post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_order_items_inner->external_id
    if (!post_orders_200_response_order_items_inner->external_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalId", post_orders_200_response_order_items_inner->external_id) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_order_items_inner->id
    if (!post_orders_200_response_order_items_inner->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_orders_200_response_order_items_inner->id) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_order_items_inner->name
    if (!post_orders_200_response_order_items_inner->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", post_orders_200_response_order_items_inner->name) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_order_items_inner->qty
    if (!post_orders_200_response_order_items_inner->qty) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "qty", post_orders_200_response_order_items_inner->qty) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_200_response_order_items_inner->total_amount
    if (!post_orders_200_response_order_items_inner->total_amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "totalAmount", post_orders_200_response_order_items_inner->total_amount) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_200_response_order_items_inner->total_net_amount
    if (!post_orders_200_response_order_items_inner->total_net_amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "totalNetAmount", post_orders_200_response_order_items_inner->total_net_amount) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_200_response_order_items_inner->unity_price
    if (!post_orders_200_response_order_items_inner->unity_price) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "unityPrice", post_orders_200_response_order_items_inner->unity_price) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_parseFromJSON(cJSON *post_orders_200_response_order_items_innerJSON){

    post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_local_var = NULL;

    // post_orders_200_response_order_items_inner->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "externalId");
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

    // post_orders_200_response_order_items_inner->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "id");
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

    // post_orders_200_response_order_items_inner->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "name");
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

    // post_orders_200_response_order_items_inner->qty
    cJSON *qty = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "qty");
    if (cJSON_IsNull(qty)) {
        qty = NULL;
    }
    if (!qty) {
        goto end;
    }

    
    if(!cJSON_IsNumber(qty))
    {
    goto end; //Numeric
    }

    // post_orders_200_response_order_items_inner->total_amount
    cJSON *total_amount = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "totalAmount");
    if (cJSON_IsNull(total_amount)) {
        total_amount = NULL;
    }
    if (!total_amount) {
        goto end;
    }

    
    if(!cJSON_IsNumber(total_amount))
    {
    goto end; //Numeric
    }

    // post_orders_200_response_order_items_inner->total_net_amount
    cJSON *total_net_amount = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "totalNetAmount");
    if (cJSON_IsNull(total_net_amount)) {
        total_net_amount = NULL;
    }
    if (!total_net_amount) {
        goto end;
    }

    
    if(!cJSON_IsNumber(total_net_amount))
    {
    goto end; //Numeric
    }

    // post_orders_200_response_order_items_inner->unity_price
    cJSON *unity_price = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_order_items_innerJSON, "unityPrice");
    if (cJSON_IsNull(unity_price)) {
        unity_price = NULL;
    }
    if (!unity_price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(unity_price))
    {
    goto end; //Numeric
    }


    post_orders_200_response_order_items_inner_local_var = post_orders_200_response_order_items_inner_create_internal (
        strdup(external_id->valuestring),
        strdup(id->valuestring),
        strdup(name->valuestring),
        qty->valuedouble,
        total_amount->valuedouble,
        total_net_amount->valuedouble,
        unity_price->valuedouble
        );

    return post_orders_200_response_order_items_inner_local_var;
end:
    return NULL;

}
