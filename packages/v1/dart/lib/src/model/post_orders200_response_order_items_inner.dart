//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_order_items_inner.g.dart';

/// PostOrders200ResponseOrderItemsInner
///
/// Properties:
/// * [externalId] - External item ID
/// * [id] - Item ID in the order
/// * [name] - Product/service name
/// * [qty] - Quantity
/// * [totalAmount] - Total item amount (quantity × unit price)
/// * [totalNetAmount] - Total net amount of the item
/// * [unityPrice] - Unit price
@BuiltValue()
abstract class PostOrders200ResponseOrderItemsInner implements Built<PostOrders200ResponseOrderItemsInner, PostOrders200ResponseOrderItemsInnerBuilder> {
  /// External item ID
  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  /// Item ID in the order
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Product/service name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Quantity
  @BuiltValueField(wireName: r'qty')
  num get qty;

  /// Total item amount (quantity × unit price)
  @BuiltValueField(wireName: r'totalAmount')
  num get totalAmount;

  /// Total net amount of the item
  @BuiltValueField(wireName: r'totalNetAmount')
  num get totalNetAmount;

  /// Unit price
  @BuiltValueField(wireName: r'unityPrice')
  num get unityPrice;

  PostOrders200ResponseOrderItemsInner._();

  factory PostOrders200ResponseOrderItemsInner([void updates(PostOrders200ResponseOrderItemsInnerBuilder b)]) = _$PostOrders200ResponseOrderItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseOrderItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponseOrderItemsInner> get serializer => _$PostOrders200ResponseOrderItemsInnerSerializer();
}

class _$PostOrders200ResponseOrderItemsInnerSerializer implements PrimitiveSerializer<PostOrders200ResponseOrderItemsInner> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponseOrderItemsInner, _$PostOrders200ResponseOrderItemsInner];

  @override
  final String wireName = r'PostOrders200ResponseOrderItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponseOrderItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'externalId';
    yield object.externalId == null ? null : serializers.serialize(
      object.externalId,
      specifiedType: const FullType.nullable(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'qty';
    yield serializers.serialize(
      object.qty,
      specifiedType: const FullType(num),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(num),
    );
    yield r'totalNetAmount';
    yield serializers.serialize(
      object.totalNetAmount,
      specifiedType: const FullType(num),
    );
    yield r'unityPrice';
    yield serializers.serialize(
      object.unityPrice,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponseOrderItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseOrderItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'qty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.qty = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAmount = valueDes;
          break;
        case r'totalNetAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalNetAmount = valueDes;
          break;
        case r'unityPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unityPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponseOrderItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseOrderItemsInnerBuilder();
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

