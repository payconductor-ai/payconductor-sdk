# PostOrdersRequestPayment

Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**expiration_in_seconds** | [**DraftExpirationInSeconds**](DraftExpirationInSeconds.md) |  | [optional] 
**card** | [**CreditCardCard**](CreditCardCard.md) |  | 
**installments** | [**CreditCardInstallments**](CreditCardInstallments.md) |  | 
**soft_descriptor** | **str** | Text that will appear on the card statement (soft descriptor) | [optional] 
**expiration_in_days** | [**BankSlipExpirationInDays**](BankSlipExpirationInDays.md) |  | [optional] 
**nu_pay** | [**NuPayNuPay**](NuPayNuPay.md) |  | 
**available_payment_methods** | [**List[AvailablePaymentMethods]**](AvailablePaymentMethods.md) | Available payment methods for this order | [optional] 

## Example

```python
from payconductor_sdk.models.post_orders_request_payment import PostOrdersRequestPayment

# TODO update the JSON string below
json = "{}"
# create an instance of PostOrdersRequestPayment from a JSON string
post_orders_request_payment_instance = PostOrdersRequestPayment.from_json(json)
# print the JSON string representation of the object
print(PostOrdersRequestPayment.to_json())

# convert the object into a dict
post_orders_request_payment_dict = post_orders_request_payment_instance.to_dict()
# create an instance of PostOrdersRequestPayment from a dict
post_orders_request_payment_from_dict = PostOrdersRequestPayment.from_dict(post_orders_request_payment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


