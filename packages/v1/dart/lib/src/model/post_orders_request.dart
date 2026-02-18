//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/post_orders_request_fingerprints.dart';
import 'package:openapi/src/model/post_orders_request_payment.dart';
import 'package:openapi/src/model/merchant_input.dart';
import 'package:openapi/src/model/post_orders_request_items_inner.dart';
import 'package:openapi/src/model/customer.dart';
import 'package:built_value/json_object.dart';
import 'package:openapi/src/model/post_orders_request_session.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders_request.g.dart';

/// PostOrdersRequest
///
/// Properties:
/// * [chargeAmount] - Total amount to be charged on the order in floating point value
/// * [clientIp] - Client IP address
/// * [customer] 
/// * [discountAmount] - Discount amount
/// * [externalId] - Order ID in your system
/// * [fingerprints] 
/// * [items] - List of products or services in the order
/// * [merchant] 
/// * [payment] 
/// * [splitAmountTotal] - Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split)
/// * [session] 
/// * [shippingFee] - Shipping fee
/// * [taxFee] - Additional fees
/// * [metadata] - Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters
@BuiltValue()
abstract class PostOrdersRequest implements Built<PostOrdersRequest, PostOrdersRequestBuilder> {
  /// Total amount to be charged on the order in floating point value
  @BuiltValueField(wireName: r'chargeAmount')
  num get chargeAmount;

  /// Client IP address
  @BuiltValueField(wireName: r'clientIp')
  String get clientIp;

  @BuiltValueField(wireName: r'customer')
  Customer get customer;

  /// Discount amount
  @BuiltValueField(wireName: r'discountAmount')
  num get discountAmount;

  /// Order ID in your system
  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'fingerprints')
  PostOrdersRequestFingerprints? get fingerprints;

  /// List of products or services in the order
  @BuiltValueField(wireName: r'items')
  BuiltList<PostOrdersRequestItemsInner>? get items;

  @BuiltValueField(wireName: r'merchant')
  MerchantInput? get merchant;

  @BuiltValueField(wireName: r'payment')
  PostOrdersRequestPayment get payment;

  /// Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split)
  @BuiltValueField(wireName: r'splitAmountTotal')
  num? get splitAmountTotal;

  @BuiltValueField(wireName: r'session')
  PostOrdersRequestSession? get session;

  /// Shipping fee
  @BuiltValueField(wireName: r'shippingFee')
  num get shippingFee;

  /// Additional fees
  @BuiltValueField(wireName: r'taxFee')
  num get taxFee;

  /// Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  PostOrdersRequest._();

  factory PostOrdersRequest([void updates(PostOrdersRequestBuilder b)]) = _$PostOrdersRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrdersRequestBuilder b) => b
      ..discountAmount = 0
      ..shippingFee = 0
      ..taxFee = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrdersRequest> get serializer => _$PostOrdersRequestSerializer();
}

class _$PostOrdersRequestSerializer implements PrimitiveSerializer<PostOrdersRequest> {
  @override
  final Iterable<Type> types = const [PostOrdersRequest, _$PostOrdersRequest];

  @override
  final String wireName = r'PostOrdersRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrdersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chargeAmount';
    yield serializers.serialize(
      object.chargeAmount,
      specifiedType: const FullType(num),
    );
    yield r'clientIp';
    yield serializers.serialize(
      object.clientIp,
      specifiedType: const FullType(String),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(Customer),
    );
    yield r'discountAmount';
    yield serializers.serialize(
      object.discountAmount,
      specifiedType: const FullType(num),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.fingerprints != null) {
      yield r'fingerprints';
      yield serializers.serialize(
        object.fingerprints,
        specifiedType: const FullType(PostOrdersRequestFingerprints),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(PostOrdersRequestItemsInner)]),
      );
    }
    if (object.merchant != null) {
      yield r'merchant';
      yield serializers.serialize(
        object.merchant,
        specifiedType: const FullType(MerchantInput),
      );
    }
    yield r'payment';
    yield serializers.serialize(
      object.payment,
      specifiedType: const FullType(PostOrdersRequestPayment),
    );
    if (object.splitAmountTotal != null) {
      yield r'splitAmountTotal';
      yield serializers.serialize(
        object.splitAmountTotal,
        specifiedType: const FullType(num),
      );
    }
    if (object.session != null) {
      yield r'session';
      yield serializers.serialize(
        object.session,
        specifiedType: const FullType(PostOrdersRequestSession),
      );
    }
    yield r'shippingFee';
    yield serializers.serialize(
      object.shippingFee,
      specifiedType: const FullType(num),
    );
    yield r'taxFee';
    yield serializers.serialize(
      object.taxFee,
      specifiedType: const FullType(num),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrdersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrdersRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chargeAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.chargeAmount = valueDes;
          break;
        case r'clientIp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientIp = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Customer),
          ) as Customer;
          result.customer.replace(valueDes);
          break;
        case r'discountAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discountAmount = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'fingerprints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrdersRequestFingerprints),
          ) as PostOrdersRequestFingerprints;
          result.fingerprints.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostOrdersRequestItemsInner)]),
          ) as BuiltList<PostOrdersRequestItemsInner>;
          result.items.replace(valueDes);
          break;
        case r'merchant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MerchantInput),
          ) as MerchantInput;
          result.merchant.replace(valueDes);
          break;
        case r'payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrdersRequestPayment),
          ) as PostOrdersRequestPayment;
          result.payment.replace(valueDes);
          break;
        case r'splitAmountTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.splitAmountTotal = valueDes;
          break;
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostOrdersRequestSession),
          ) as PostOrdersRequestSession;
          result.session.replace(valueDes);
          break;
        case r'shippingFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.shippingFee = valueDes;
          break;
        case r'taxFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.taxFee = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrdersRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrdersRequestBuilder();
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

