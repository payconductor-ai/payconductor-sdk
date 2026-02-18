//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_credit_card.g.dart';

/// PostOrders200ResponseCreditCard
///
/// Properties:
/// * [authorizationCode] - Transaction authorization code
@BuiltValue()
abstract class PostOrders200ResponseCreditCard implements Built<PostOrders200ResponseCreditCard, PostOrders200ResponseCreditCardBuilder> {
  /// Transaction authorization code
  @BuiltValueField(wireName: r'authorizationCode')
  String? get authorizationCode;

  PostOrders200ResponseCreditCard._();

  factory PostOrders200ResponseCreditCard([void updates(PostOrders200ResponseCreditCardBuilder b)]) = _$PostOrders200ResponseCreditCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseCreditCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponseCreditCard> get serializer => _$PostOrders200ResponseCreditCardSerializer();
}

class _$PostOrders200ResponseCreditCardSerializer implements PrimitiveSerializer<PostOrders200ResponseCreditCard> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponseCreditCard, _$PostOrders200ResponseCreditCard];

  @override
  final String wireName = r'PostOrders200ResponseCreditCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponseCreditCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorizationCode != null) {
      yield r'authorizationCode';
      yield serializers.serialize(
        object.authorizationCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponseCreditCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseCreditCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorizationCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponseCreditCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseCreditCardBuilder();
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

