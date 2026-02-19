#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/post_orders_200_response.h"
#include "../model/post_orders_by_id_confirm_200_response.h"
#include "../model/post_orders_request.h"
#include "../model/post_orders_request_payment.h"

// Enum STATUS for OrdersAPI_getOrders
typedef enum  { payconductor_api_getOrders_STATUS_NULL = 0, payconductor_api_getOrders_STATUS_Generating, payconductor_api_getOrders_STATUS_Pending, payconductor_api_getOrders_STATUS_Completed, payconductor_api_getOrders_STATUS_Failed, payconductor_api_getOrders_STATUS_Canceled, payconductor_api_getOrders_STATUS_Refunding, payconductor_api_getOrders_STATUS_Refunded, payconductor_api_getOrders_STATUS_InDispute, payconductor_api_getOrders_STATUS_Chargeback } payconductor_api_getOrders_status_e;


// List orders
//
// Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
//
void
OrdersAPI_getOrders(apiClient_t *apiClient, double page, double pageSize, char endDate, char startDate, char *id, payconductor_api_getOrders_status_e status);


// Get order by ID
//
// Retrieve the complete data of an order by our ID
//
void
OrdersAPI_getOrdersById(apiClient_t *apiClient, char *id);


// Create order
//
// Create a new order for payment using the provided data
//
post_orders_200_response_t*
OrdersAPI_postOrders(apiClient_t *apiClient, post_orders_request_t *post_orders_request);


// Confirm order
//
// Confirms a Draft order, setting the payment method and processing the charges associated with the order.
//
post_orders_by_id_confirm_200_response_t*
OrdersAPI_postOrdersByIdConfirm(apiClient_t *apiClient, char *id, post_orders_request_payment_t *post_orders_request_payment);


// Refund order
//
// Initiate a refund for the order specified by ID.
//
void
OrdersAPI_postOrdersByIdRefund(apiClient_t *apiClient, char *id);


