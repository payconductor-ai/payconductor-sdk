//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/post_orders200_response_nu_pay.dart';
import 'package:openapi/src/model/post_orders200_response_bank_slip.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/post_orders200_response_session.dart';
import 'package:openapi/src/model/post_orders200_response_order_items_inner.dart';
import 'package:openapi/src/model/post_orders200_response_credit_card.dart';
import 'package:openapi/src/model/post_orders200_response_pic_pay.dart';
import 'package:openapi/src/model/post_orders200_response_pix.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response.g.dart';

/// PostOrders200Response
///
/// Properties:
/// * [id] - Order ID in the system
/// * [externalId] - External order ID (provided by your integration)
/// * [externalIntegrationKey] - Provider used to process the order
/// * [externalIntegrationId] - Order ID in the payment provider
/// * [amount] - Total order amount
/// * [costFee] - Cost fee applied to the order
/// * [pix] 
/// * [bankSlip] 
/// * [nuPay] 
/// * [picPay] 
/// * [creditCard] 
/// * [status] 
/// * [paymentMethod] 
/// * [payedAt] - Date and time when the order was paid (ISO 8601)
/// * [errorCode] - Error code, if any
/// * [errorMessage] - Error message, if any
/// * [orderItems] 
/// * [session] 
@BuiltValue()
abstract class PostOrders200Response implements Built<PostOrders200Response, PostOrders200ResponseBuilder> {
  /// Order ID in the system
  @BuiltValueField(wireName: r'id')
  String get id;

  /// External order ID (provided by your integration)
  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  /// Provider used to process the order
  @BuiltValueField(wireName: r'externalIntegrationKey')
  String get externalIntegrationKey;

  /// Order ID in the payment provider
  @BuiltValueField(wireName: r'externalIntegrationId')
  String? get externalIntegrationId;

  /// Total order amount
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Cost fee applied to the order
  @BuiltValueField(wireName: r'costFee')
  num get costFee;

  @BuiltValueField(wireName: r'pix')
  PostOrders200ResponsePix? get pix;

  @BuiltValueField(wireName: r'bankSlip')
  PostOrders200ResponseBankSlip? get bankSlip;

  @BuiltValueField(wireName: r'nuPay')
  PostOrders200ResponseNuPay? get nuPay;

  @BuiltValueField(wireName: r'picPay')
  PostOrders200ResponsePicPay? get picPay;

  @BuiltValueField(wireName: r'creditCard')
  PostOrders200ResponseCreditCard? get creditCard;

  @BuiltValueField(wireName: r'status')
  PostOrders200ResponseStatusEnum get status;
  // enum statusEnum {  Generating,  Pending,  Completed,  Failed,  Canceled,  Refunding,  Refunded,  InDispute,  Chargeback,  };

  @BuiltValueField(wireName: r'paymentMethod')
  PostOrders200ResponsePaymentMethodEnum get paymentMethod;
  // enum paymentMethodEnum {  Pix,  CreditCard,  DebitCard,  BankSlip,  Crypto,  ApplePay,  NuPay,  PicPay,  AmazonPay,  SepaDebit,  GooglePay,  };

  /// Date and time when the order was paid (ISO 8601)
  @BuiltValueField(wireName: r'payedAt')
  String? get payedAt;

  /// Error code, if any
  @BuiltValueField(wireName: r'errorCode')
  String? get errorCode;

  /// Error message, if any
  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'orderItems')
  BuiltList<PostOrders200ResponseOrderItemsInner> get orderItems;

  @BuiltValueField(wireName: r'session')
  PostOrders200ResponseSession? get session;

  PostOrders200Response._();

  factory PostOrders200Response([void updates(PostOrders200ResponseBuilder b)]) = _$PostOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200Response> get serializer => _$PostOrders200ResponseSerializer();
}

class _$PostOrders200ResponseSerializer implements PrimitiveSerializer<PostOrders200Response> {
  @override
  final Iterable<Type> types = const [PostOrders200Response, _$PostOrders200Response];

  @override
  final String wireName = r'PostOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield object.externalId == null ? null : serializers.serialize(
      object.externalId,
      specifiedType: const FullType.nullable(String),
    );
    yield r'externalIntegrationKey';
    yield serializers.serialize(
      object.externalIntegrationKey,
      specifiedType: const FullType(String),
    );
    yield r'externalIntegrationId';
    yield object.externalIntegrationId == null ? null : serializers.serialize(
      object.externalIntegrationId,
      specifiedType: const FullType.nullable(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'costFee';
    yield serializers.serialize(
      object.costFee,
      specifiedType: const FullType(num),
    );
    if (object.pix != null) {
      yield r'pix';
      yield serializers.serialize(
        object.pix,
        specifiedType: const FullType(PostOrders200ResponsePix),
      );
    }
    if (object.bankSlip != null) {
      yield r'bankSlip';
      yield serializers.serialize(
        object.bankSlip,
        specifiedType: const FullType(PostOrders200ResponseBankSlip),
      );
    }
    if (object.nuPay != null) {
      yield r'nuPay';
      yield serializers.serialize(
        object.nuPay,
        specifiedType: const FullType(PostOrders200ResponseNuPay),
      );
    }
    if (object.picPay != null) {
      yield r'picPay';
      yield serializers.serialize(
        object.picPay,
        specifiedType: const FullType(PostOrders200ResponsePicPay),
      );
    }
    if (object.creditCard != null) {
      yield r'creditCard';
      yield serializers.serialize(
        object.creditCard,
        specifiedType: const FullType(PostOrders200ResponseCreditCard),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PostOrders200ResponseStatusEnum),
    );
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(PostOrders200ResponsePaymentMethodEnum),
    );
    yield r'payedAt';
    yield object.payedAt == null ? null : serializers.serialize(
      object.payedAt,
      specifiedType: const FullType.nullable(String),
    );
    yield r'errorCode';
    yield object.errorCode == null ? null : serializers.serialize(
      object.errorCode,
      specifiedType: const FullType.nullable(String),
    );
    yield r'errorMessage';
    yield object.errorMessage == null ? null : serializers.serialize(
      object.errorMessage,
      specifiedType: const FullType.nullable(String),
    );
    yield r'orderItems';
    yield serializers.serialize(
      object.orderItems,
      specifiedType: const FullType(BuiltList, [FullType(PostOrders200ResponseOrderItemsInner)]),
    );
    if (object.session != null) {
      yield r'session';
      yield serializers.serialize(
        object.session,
        specifiedType: const FullType.nullable(PostOrders200ResponseSession),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'externalIntegrationKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalIntegrationKey = valueDes;
          break;
        case r'externalIntegrationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalIntegrationId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'costFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.costFee = valueDes;
          break;
        case r'pix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponsePix),
          ) as PostOrders200ResponsePix;
          result.pix.replace(valueDes);
          break;
        case r'bankSlip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponseBankSlip),
          ) as PostOrders200ResponseBankSlip;
          result.bankSlip.replace(valueDes);
          break;
        case r'nuPay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponseNuPay),
          ) as PostOrders200ResponseNuPay;
          result.nuPay.replace(valueDes);
          break;
        case r'picPay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponsePicPay),
          ) as PostOrders200ResponsePicPay;
          result.picPay.replace(valueDes);
          break;
        case r'creditCard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponseCreditCard),
          ) as PostOrders200ResponseCreditCard;
          result.creditCard.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponseStatusEnum),
          ) as PostOrders200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrders200ResponsePaymentMethodEnum),
          ) as PostOrders200ResponsePaymentMethodEnum;
          result.paymentMethod = valueDes;
          break;
        case r'payedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.payedAt = valueDes;
          break;
        case r'errorCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorCode = valueDes;
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorMessage = valueDes;
          break;
        case r'orderItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostOrders200ResponseOrderItemsInner)]),
          ) as BuiltList<PostOrders200ResponseOrderItemsInner>;
          result.orderItems.replace(valueDes);
          break;
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PostOrders200ResponseSession),
          ) as PostOrders200ResponseSession?;
          if (valueDes == null) continue;
          result.session.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PostOrders200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Generating')
  static const PostOrders200ResponseStatusEnum generating = _$postOrders200ResponseStatusEnum_generating;
  @BuiltValueEnumConst(wireName: r'Pending')
  static const PostOrders200ResponseStatusEnum pending = _$postOrders200ResponseStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const PostOrders200ResponseStatusEnum completed = _$postOrders200ResponseStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'Failed')
  static const PostOrders200ResponseStatusEnum failed = _$postOrders200ResponseStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'Canceled')
  static const PostOrders200ResponseStatusEnum canceled = _$postOrders200ResponseStatusEnum_canceled;
  @BuiltValueEnumConst(wireName: r'Refunding')
  static const PostOrders200ResponseStatusEnum refunding = _$postOrders200ResponseStatusEnum_refunding;
  @BuiltValueEnumConst(wireName: r'Refunded')
  static const PostOrders200ResponseStatusEnum refunded = _$postOrders200ResponseStatusEnum_refunded;
  @BuiltValueEnumConst(wireName: r'InDispute')
  static const PostOrders200ResponseStatusEnum inDispute = _$postOrders200ResponseStatusEnum_inDispute;
  @BuiltValueEnumConst(wireName: r'Chargeback')
  static const PostOrders200ResponseStatusEnum chargeback = _$postOrders200ResponseStatusEnum_chargeback;

  static Serializer<PostOrders200ResponseStatusEnum> get serializer => _$postOrders200ResponseStatusEnumSerializer;

  const PostOrders200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<PostOrders200ResponseStatusEnum> get values => _$postOrders200ResponseStatusEnumValues;
  static PostOrders200ResponseStatusEnum valueOf(String name) => _$postOrders200ResponseStatusEnumValueOf(name);
}

class PostOrders200ResponsePaymentMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pix')
  static const PostOrders200ResponsePaymentMethodEnum pix = _$postOrders200ResponsePaymentMethodEnum_pix;
  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PostOrders200ResponsePaymentMethodEnum creditCard = _$postOrders200ResponsePaymentMethodEnum_creditCard;
  @BuiltValueEnumConst(wireName: r'DebitCard')
  static const PostOrders200ResponsePaymentMethodEnum debitCard = _$postOrders200ResponsePaymentMethodEnum_debitCard;
  @BuiltValueEnumConst(wireName: r'BankSlip')
  static const PostOrders200ResponsePaymentMethodEnum bankSlip = _$postOrders200ResponsePaymentMethodEnum_bankSlip;
  @BuiltValueEnumConst(wireName: r'Crypto')
  static const PostOrders200ResponsePaymentMethodEnum crypto = _$postOrders200ResponsePaymentMethodEnum_crypto;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PostOrders200ResponsePaymentMethodEnum applePay = _$postOrders200ResponsePaymentMethodEnum_applePay;
  @BuiltValueEnumConst(wireName: r'NuPay')
  static const PostOrders200ResponsePaymentMethodEnum nuPay = _$postOrders200ResponsePaymentMethodEnum_nuPay;
  @BuiltValueEnumConst(wireName: r'PicPay')
  static const PostOrders200ResponsePaymentMethodEnum picPay = _$postOrders200ResponsePaymentMethodEnum_picPay;
  @BuiltValueEnumConst(wireName: r'AmazonPay')
  static const PostOrders200ResponsePaymentMethodEnum amazonPay = _$postOrders200ResponsePaymentMethodEnum_amazonPay;
  @BuiltValueEnumConst(wireName: r'SepaDebit')
  static const PostOrders200ResponsePaymentMethodEnum sepaDebit = _$postOrders200ResponsePaymentMethodEnum_sepaDebit;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PostOrders200ResponsePaymentMethodEnum googlePay = _$postOrders200ResponsePaymentMethodEnum_googlePay;

  static Serializer<PostOrders200ResponsePaymentMethodEnum> get serializer => _$postOrders200ResponsePaymentMethodEnumSerializer;

  const PostOrders200ResponsePaymentMethodEnum._(String name): super(name);

  static BuiltSet<PostOrders200ResponsePaymentMethodEnum> get values => _$postOrders200ResponsePaymentMethodEnumValues;
  static PostOrders200ResponsePaymentMethodEnum valueOf(String name) => _$postOrders200ResponsePaymentMethodEnumValueOf(name);
}

