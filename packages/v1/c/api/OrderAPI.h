#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/post_orders_200_response.h"
#include "../model/post_orders_request.h"

// Enum PERIOD for OrderAPI_getOrders
typedef enum  { payconductor_api_getOrders_PERIOD_NULL = 0, payconductor_api_getOrders_PERIOD_Today, payconductor_api_getOrders_PERIOD_Yesterday, payconductor_api_getOrders_PERIOD_Last7Days, payconductor_api_getOrders_PERIOD_Last30Days, payconductor_api_getOrders_PERIOD_ThisMonth, payconductor_api_getOrders_PERIOD_LastMonth, payconductor_api_getOrders_PERIOD_ThisYear, payconductor_api_getOrders_PERIOD_Custom } payconductor_api_getOrders_period_e;

// Enum STATUS for OrderAPI_getOrders
typedef enum  { payconductor_api_getOrders_STATUS_NULL = 0, payconductor_api_getOrders_STATUS_Generating, payconductor_api_getOrders_STATUS_Pending, payconductor_api_getOrders_STATUS_Completed, payconductor_api_getOrders_STATUS_Failed, payconductor_api_getOrders_STATUS_Canceled, payconductor_api_getOrders_STATUS_Refunding, payconductor_api_getOrders_STATUS_Refunded, payconductor_api_getOrders_STATUS_InDispute, payconductor_api_getOrders_STATUS_Chargeback } payconductor_api_getOrders_status_e;


// List orders
//
// Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
//
void
OrderAPI_getOrders(apiClient_t *apiClient, payconductor_api_getOrders_period_e period, double page, double pageSize, char endDate, char startDate, char *id, payconductor_api_getOrders_status_e status);


// Get order by ID
//
// Retrieve the complete data of an order by our ID
//
void
OrderAPI_getOrdersById(apiClient_t *apiClient, char *id);


// Create order
//
// Create a new order for payment using the provided data
//
post_orders_200_response_t*
OrderAPI_postOrders(apiClient_t *apiClient, post_orders_request_t *post_orders_request);


// Refund order
//
// Initiate a refund for the order specified by ID.
//
void
OrderAPI_postOrdersByIdRefund(apiClient_t *apiClient, char *id);


