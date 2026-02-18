# Org.OpenAPITools.Model.PostOrders200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | ID do pedido no sistema | 
**ExternalIntegrationKey** | **string** | Provedor utilizada para processar o pedido | 
**Amount** | **decimal** | Valor total do pedido | 
**CostFee** | **decimal** | Taxa de custo aplicada ao pedido | 
**Status** | **string** |  | 
**PaymentMethod** | **string** |  | 
**OrderItems** | [**List&lt;PostOrders200ResponseOrderItemsInner&gt;**](PostOrders200ResponseOrderItemsInner.md) |  | 
**ExternalId** | **string** | ID externo do pedido (fornecido pela sua integração) | 
**ExternalIntegrationId** | **string** | ID do pedido no provedor de pagamento | 
**Pix** | [**PostOrders200ResponsePix**](PostOrders200ResponsePix.md) |  | [optional] 
**BankSlip** | [**PostOrders200ResponseBankSlip**](PostOrders200ResponseBankSlip.md) |  | [optional] 
**NuPay** | [**PostOrders200ResponseNuPay**](PostOrders200ResponseNuPay.md) |  | [optional] 
**PicPay** | [**PostOrders200ResponsePicPay**](PostOrders200ResponsePicPay.md) |  | [optional] 
**CreditCard** | [**PostOrders200ResponseCreditCard**](PostOrders200ResponseCreditCard.md) |  | [optional] 
**PayedAt** | **string** | Data e hora em que o pedido foi pago (ISO 8601) | 
**ErrorCode** | **string** | Código de erro, se houver | 
**ErrorMessage** | **string** | Mensagem de erro, se houver | 
**Session** | [**PostOrders200ResponseSession**](PostOrders200ResponseSession.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

