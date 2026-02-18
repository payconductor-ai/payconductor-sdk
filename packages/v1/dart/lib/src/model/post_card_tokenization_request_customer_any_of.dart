//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_card_tokenization_request_customer_any_of.g.dart';

/// PostCardTokenizationRequestCustomerAnyOf
///
/// Properties:
/// * [id] - ID do cliente existente
@BuiltValue()
abstract class PostCardTokenizationRequestCustomerAnyOf implements Built<PostCardTokenizationRequestCustomerAnyOf, PostCardTokenizationRequestCustomerAnyOfBuilder> {
  /// ID do cliente existente
  @BuiltValueField(wireName: r'id')
  String get id;

  PostCardTokenizationRequestCustomerAnyOf._();

  factory PostCardTokenizationRequestCustomerAnyOf([void updates(PostCardTokenizationRequestCustomerAnyOfBuilder b)]) = _$PostCardTokenizationRequestCustomerAnyOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostCardTokenizationRequestCustomerAnyOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostCardTokenizationRequestCustomerAnyOf> get serializer => _$PostCardTokenizationRequestCustomerAnyOfSerializer();
}

class _$PostCardTokenizationRequestCustomerAnyOfSerializer implements PrimitiveSerializer<PostCardTokenizationRequestCustomerAnyOf> {
  @override
  final Iterable<Type> types = const [PostCardTokenizationRequestCustomerAnyOf, _$PostCardTokenizationRequestCustomerAnyOf];

  @override
  final String wireName = r'PostCardTokenizationRequestCustomerAnyOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostCardTokenizationRequestCustomerAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostCardTokenizationRequestCustomerAnyOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostCardTokenizationRequestCustomerAnyOfBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostCardTokenizationRequestCustomerAnyOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostCardTokenizationRequestCustomerAnyOfBuilder();
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

