//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/bank_slip.dart';
import 'package:openapi/src/model/bank_slip_expiration_in_days.dart';
import 'package:openapi/src/model/complete_card_data.dart';
import 'package:openapi/src/model/complete_card_data_expiration.dart';
import 'package:openapi/src/model/credit_card.dart';
import 'package:openapi/src/model/credit_card_card.dart';
import 'package:openapi/src/model/credit_card_installments.dart';
import 'package:openapi/src/model/customer.dart';
import 'package:openapi/src/model/customer1.dart';
import 'package:openapi/src/model/customer2.dart';
import 'package:openapi/src/model/customer2_document_type.dart';
import 'package:openapi/src/model/customer_address.dart';
import 'package:openapi/src/model/draft.dart';
import 'package:openapi/src/model/draft_available_payment_methods_inner.dart';
import 'package:openapi/src/model/draft_expiration_in_seconds.dart';
import 'package:openapi/src/model/merchant_input.dart';
import 'package:openapi/src/model/nu_pay.dart';
import 'package:openapi/src/model/nu_pay_nu_pay.dart';
import 'package:openapi/src/model/pic_pay.dart';
import 'package:openapi/src/model/pix.dart';
import 'package:openapi/src/model/pix_expiration_in_seconds.dart';
import 'package:openapi/src/model/post_card_tokenization200_response.dart';
import 'package:openapi/src/model/post_card_tokenization_request.dart';
import 'package:openapi/src/model/post_card_tokenization_request_customer.dart';
import 'package:openapi/src/model/post_card_tokenization_request_customer_any_of.dart';
import 'package:openapi/src/model/post_orders200_response.dart';
import 'package:openapi/src/model/post_orders200_response_bank_slip.dart';
import 'package:openapi/src/model/post_orders200_response_credit_card.dart';
import 'package:openapi/src/model/post_orders200_response_nu_pay.dart';
import 'package:openapi/src/model/post_orders200_response_order_items_inner.dart';
import 'package:openapi/src/model/post_orders200_response_pic_pay.dart';
import 'package:openapi/src/model/post_orders200_response_pix.dart';
import 'package:openapi/src/model/post_orders200_response_session.dart';
import 'package:openapi/src/model/post_orders_by_id_confirm200_response.dart';
import 'package:openapi/src/model/post_orders_request.dart';
import 'package:openapi/src/model/post_orders_request_fingerprints.dart';
import 'package:openapi/src/model/post_orders_request_items_inner.dart';
import 'package:openapi/src/model/post_orders_request_payment.dart';
import 'package:openapi/src/model/post_orders_request_session.dart';
import 'package:openapi/src/model/post_withdraws200_response.dart';
import 'package:openapi/src/model/post_withdraws200_response_payed_at.dart';
import 'package:openapi/src/model/post_withdraws200_response_payout_account.dart';
import 'package:openapi/src/model/post_withdraws_request.dart';
import 'package:openapi/src/model/post_withdraws_request_payout_account.dart';
import 'package:openapi/src/model/tokenized_card.dart';

part 'serializers.g.dart';

@SerializersFor([
  BankSlip,
  BankSlipExpirationInDays,
  CompleteCardData,
  CompleteCardDataExpiration,
  CreditCard,
  CreditCardCard,
  CreditCardInstallments,
  Customer,
  Customer1,
  Customer2,
  Customer2DocumentType,
  CustomerAddress,
  Draft,
  DraftAvailablePaymentMethodsInner,
  DraftExpirationInSeconds,
  MerchantInput,
  NuPay,
  NuPayNuPay,
  PicPay,
  Pix,
  PixExpirationInSeconds,
  PostCardTokenization200Response,
  PostCardTokenizationRequest,
  PostCardTokenizationRequestCustomer,
  PostCardTokenizationRequestCustomerAnyOf,
  PostOrders200Response,
  PostOrders200ResponseBankSlip,
  PostOrders200ResponseCreditCard,
  PostOrders200ResponseNuPay,
  PostOrders200ResponseOrderItemsInner,
  PostOrders200ResponsePicPay,
  PostOrders200ResponsePix,
  PostOrders200ResponseSession,
  PostOrdersByIdConfirm200Response,
  PostOrdersRequest,
  PostOrdersRequestFingerprints,
  PostOrdersRequestItemsInner,
  PostOrdersRequestPayment,
  PostOrdersRequestSession,
  PostWithdraws200Response,
  PostWithdraws200ResponsePayedAt,
  PostWithdraws200ResponsePayoutAccount,
  PostWithdrawsRequest,
  PostWithdrawsRequestPayoutAccount,
  TokenizedCard,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
