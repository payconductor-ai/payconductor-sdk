# Org.OpenAPITools.Model.PostWithdraws200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Identificador único do saque | 
**ExternalIntegrationKey** | **string** | Chave do provedor utilizado para o saque | 
**CostFee** | **decimal** | Taxa de custo aplicada ao saque | 
**PayoutAccount** | [**PostWithdraws200ResponsePayoutAccount**](PostWithdraws200ResponsePayoutAccount.md) |  | 
**ExternalId** | **string** | ID do saque no sistema no seu sistema | 
**ExternalIntegrationId** | **string** | ID do saque no provedor de pagamento | 
**Status** | **string** | Status do saque | [default to StatusEnum.Pending]
**ErrorCode** | **string** | Código do erro, se houver | 
**ErrorMessage** | **string** | Mensagem descritiva do erro, se houver | 
**PayedAt** | [**PostWithdraws200ResponsePayedAt**](PostWithdraws200ResponsePayedAt.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

