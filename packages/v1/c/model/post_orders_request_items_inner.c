#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_request_items_inner.h"



static post_orders_request_items_inner_t *post_orders_request_items_inner_create_internal(
    char *id,
    int is_physical,
    char *name,
    double qty,
    double unit_price
    ) {
    post_orders_request_items_inner_t *post_orders_request_items_inner_local_var = malloc(sizeof(post_orders_request_items_inner_t));
    if (!post_orders_request_items_inner_local_var) {
        return NULL;
    }
    post_orders_request_items_inner_local_var->id = id;
    post_orders_request_items_inner_local_var->is_physical = is_physical;
    post_orders_request_items_inner_local_var->name = name;
    post_orders_request_items_inner_local_var->qty = qty;
    post_orders_request_items_inner_local_var->unit_price = unit_price;

    post_orders_request_items_inner_local_var->_library_owned = 1;
    return post_orders_request_items_inner_local_var;
}

__attribute__((deprecated)) post_orders_request_items_inner_t *post_orders_request_items_inner_create(
    char *id,
    int is_physical,
    char *name,
    double qty,
    double unit_price
    ) {
    return post_orders_request_items_inner_create_internal (
        id,
        is_physical,
        name,
        qty,
        unit_price
        );
}

void post_orders_request_items_inner_free(post_orders_request_items_inner_t *post_orders_request_items_inner) {
    if(NULL == post_orders_request_items_inner){
        return ;
    }
    if(post_orders_request_items_inner->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_request_items_inner_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_request_items_inner->id) {
        free(post_orders_request_items_inner->id);
        post_orders_request_items_inner->id = NULL;
    }
    if (post_orders_request_items_inner->name) {
        free(post_orders_request_items_inner->name);
        post_orders_request_items_inner->name = NULL;
    }
    free(post_orders_request_items_inner);
}

cJSON *post_orders_request_items_inner_convertToJSON(post_orders_request_items_inner_t *post_orders_request_items_inner) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_request_items_inner->id
    if (!post_orders_request_items_inner->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_orders_request_items_inner->id) == NULL) {
    goto fail; //String
    }


    // post_orders_request_items_inner->is_physical
    if (!post_orders_request_items_inner->is_physical) {
        goto fail;
    }
    if(cJSON_AddBoolToObject(item, "isPhysical", post_orders_request_items_inner->is_physical) == NULL) {
    goto fail; //Bool
    }


    // post_orders_request_items_inner->name
    if (!post_orders_request_items_inner->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", post_orders_request_items_inner->name) == NULL) {
    goto fail; //String
    }


    // post_orders_request_items_inner->qty
    if (!post_orders_request_items_inner->qty) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "qty", post_orders_request_items_inner->qty) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_request_items_inner->unit_price
    if (!post_orders_request_items_inner->unit_price) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "unitPrice", post_orders_request_items_inner->unit_price) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_request_items_inner_t *post_orders_request_items_inner_parseFromJSON(cJSON *post_orders_request_items_innerJSON){

    post_orders_request_items_inner_t *post_orders_request_items_inner_local_var = NULL;

    // post_orders_request_items_inner->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_orders_request_items_innerJSON, "id");
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

    // post_orders_request_items_inner->is_physical
    cJSON *is_physical = cJSON_GetObjectItemCaseSensitive(post_orders_request_items_innerJSON, "isPhysical");
    if (cJSON_IsNull(is_physical)) {
        is_physical = NULL;
    }
    if (!is_physical) {
        goto end;
    }

    
    if(!cJSON_IsBool(is_physical))
    {
    goto end; //Bool
    }

    // post_orders_request_items_inner->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(post_orders_request_items_innerJSON, "name");
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

    // post_orders_request_items_inner->qty
    cJSON *qty = cJSON_GetObjectItemCaseSensitive(post_orders_request_items_innerJSON, "qty");
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

    // post_orders_request_items_inner->unit_price
    cJSON *unit_price = cJSON_GetObjectItemCaseSensitive(post_orders_request_items_innerJSON, "unitPrice");
    if (cJSON_IsNull(unit_price)) {
        unit_price = NULL;
    }
    if (!unit_price) {
        goto end;
    }

    
    if(!cJSON_IsNumber(unit_price))
    {
    goto end; //Numeric
    }


    post_orders_request_items_inner_local_var = post_orders_request_items_inner_create_internal (
        strdup(id->valuestring),
        is_physical->valueint,
        strdup(name->valuestring),
        qty->valuedouble,
        unit_price->valuedouble
        );

    return post_orders_request_items_inner_local_var;
end:
    return NULL;

}
