//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/post_orders200_response_nu_pay.dart';
import 'package:openapi/src/model/post_orders200_response_bank_slip.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/post_orders200_response_pic_pay.dart';
import 'package:openapi/src/model/post_orders200_response_pix.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders_by_id_confirm200_response.g.dart';

/// PostOrdersByIdConfirm200Response
///
/// Properties:
/// * [id] - Order ID in the system
/// * [externalId] - External order ID (provided by your integration)
/// * [amount] - Total order amount
/// * [costFee] - Cost fee applied to the order
/// * [pix] 
/// * [bankSlip] 
/// * [nuPay] 
/// * [picPay] 
/// * [status] 
/// * [paymentMethod] 
/// * [payedAt] - Date and time when the order was paid (ISO 8601)
/// * [errorCode] - Error code, if any
/// * [errorMessage] - Error message, if any
@BuiltValue()
abstract class PostOrdersByIdConfirm200Response implements Built<PostOrdersByIdConfirm200Response, PostOrdersByIdConfirm200ResponseBuilder> {
  /// Order ID in the system
  @BuiltValueField(wireName: r'id')
  String get id;

  /// External order ID (provided by your integration)
  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

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

  @BuiltValueField(wireName: r'status')
  PostOrdersByIdConfirm200ResponseStatusEnum get status;
  // enum statusEnum {  Generating,  Pending,  Completed,  Failed,  Canceled,  Refunding,  Refunded,  InDispute,  Chargeback,  };

  @BuiltValueField(wireName: r'paymentMethod')
  PostOrdersByIdConfirm200ResponsePaymentMethodEnum get paymentMethod;
  // enum paymentMethodEnum {  Pix,  CreditCard,  DebitCard,  BankSlip,  Crypto,  ApplePay,  NuPay,  PicPay,  AmazonPay,  SepaDebit,  GooglePay,  Draft,  };

  /// Date and time when the order was paid (ISO 8601)
  @BuiltValueField(wireName: r'payedAt')
  String? get payedAt;

  /// Error code, if any
  @BuiltValueField(wireName: r'errorCode')
  String? get errorCode;

  /// Error message, if any
  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  PostOrdersByIdConfirm200Response._();

  factory PostOrdersByIdConfirm200Response([void updates(PostOrdersByIdConfirm200ResponseBuilder b)]) = _$PostOrdersByIdConfirm200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrdersByIdConfirm200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrdersByIdConfirm200Response> get serializer => _$PostOrdersByIdConfirm200ResponseSerializer();
}

class _$PostOrdersByIdConfirm200ResponseSerializer implements PrimitiveSerializer<PostOrdersByIdConfirm200Response> {
  @override
  final Iterable<Type> types = const [PostOrdersByIdConfirm200Response, _$PostOrdersByIdConfirm200Response];

  @override
  final String wireName = r'PostOrdersByIdConfirm200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrdersByIdConfirm200Response object, {
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PostOrdersByIdConfirm200ResponseStatusEnum),
    );
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(PostOrdersByIdConfirm200ResponsePaymentMethodEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrdersByIdConfirm200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrdersByIdConfirm200ResponseBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrdersByIdConfirm200ResponseStatusEnum),
          ) as PostOrdersByIdConfirm200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrdersByIdConfirm200ResponsePaymentMethodEnum),
          ) as PostOrdersByIdConfirm200ResponsePaymentMethodEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrdersByIdConfirm200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrdersByIdConfirm200ResponseBuilder();
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

class PostOrdersByIdConfirm200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Generating')
  static const PostOrdersByIdConfirm200ResponseStatusEnum generating = _$postOrdersByIdConfirm200ResponseStatusEnum_generating;
  @BuiltValueEnumConst(wireName: r'Pending')
  static const PostOrdersByIdConfirm200ResponseStatusEnum pending = _$postOrdersByIdConfirm200ResponseStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const PostOrdersByIdConfirm200ResponseStatusEnum completed = _$postOrdersByIdConfirm200ResponseStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'Failed')
  static const PostOrdersByIdConfirm200ResponseStatusEnum failed = _$postOrdersByIdConfirm200ResponseStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'Canceled')
  static const PostOrdersByIdConfirm200ResponseStatusEnum canceled = _$postOrdersByIdConfirm200ResponseStatusEnum_canceled;
  @BuiltValueEnumConst(wireName: r'Refunding')
  static const PostOrdersByIdConfirm200ResponseStatusEnum refunding = _$postOrdersByIdConfirm200ResponseStatusEnum_refunding;
  @BuiltValueEnumConst(wireName: r'Refunded')
  static const PostOrdersByIdConfirm200ResponseStatusEnum refunded = _$postOrdersByIdConfirm200ResponseStatusEnum_refunded;
  @BuiltValueEnumConst(wireName: r'InDispute')
  static const PostOrdersByIdConfirm200ResponseStatusEnum inDispute = _$postOrdersByIdConfirm200ResponseStatusEnum_inDispute;
  @BuiltValueEnumConst(wireName: r'Chargeback')
  static const PostOrdersByIdConfirm200ResponseStatusEnum chargeback = _$postOrdersByIdConfirm200ResponseStatusEnum_chargeback;

  static Serializer<PostOrdersByIdConfirm200ResponseStatusEnum> get serializer => _$postOrdersByIdConfirm200ResponseStatusEnumSerializer;

  const PostOrdersByIdConfirm200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<PostOrdersByIdConfirm200ResponseStatusEnum> get values => _$postOrdersByIdConfirm200ResponseStatusEnumValues;
  static PostOrdersByIdConfirm200ResponseStatusEnum valueOf(String name) => _$postOrdersByIdConfirm200ResponseStatusEnumValueOf(name);
}

class PostOrdersByIdConfirm200ResponsePaymentMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pix')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum pix = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_pix;
  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum creditCard = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_creditCard;
  @BuiltValueEnumConst(wireName: r'DebitCard')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum debitCard = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_debitCard;
  @BuiltValueEnumConst(wireName: r'BankSlip')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum bankSlip = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_bankSlip;
  @BuiltValueEnumConst(wireName: r'Crypto')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum crypto = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_crypto;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum applePay = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_applePay;
  @BuiltValueEnumConst(wireName: r'NuPay')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum nuPay = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_nuPay;
  @BuiltValueEnumConst(wireName: r'PicPay')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum picPay = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_picPay;
  @BuiltValueEnumConst(wireName: r'AmazonPay')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum amazonPay = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_amazonPay;
  @BuiltValueEnumConst(wireName: r'SepaDebit')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum sepaDebit = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_sepaDebit;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum googlePay = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_googlePay;
  @BuiltValueEnumConst(wireName: r'Draft')
  static const PostOrdersByIdConfirm200ResponsePaymentMethodEnum draft = _$postOrdersByIdConfirm200ResponsePaymentMethodEnum_draft;

  static Serializer<PostOrdersByIdConfirm200ResponsePaymentMethodEnum> get serializer => _$postOrdersByIdConfirm200ResponsePaymentMethodEnumSerializer;

  const PostOrdersByIdConfirm200ResponsePaymentMethodEnum._(String name): super(name);

  static BuiltSet<PostOrdersByIdConfirm200ResponsePaymentMethodEnum> get values => _$postOrdersByIdConfirm200ResponsePaymentMethodEnumValues;
  static PostOrdersByIdConfirm200ResponsePaymentMethodEnum valueOf(String name) => _$postOrdersByIdConfirm200ResponsePaymentMethodEnumValueOf(name);
}

