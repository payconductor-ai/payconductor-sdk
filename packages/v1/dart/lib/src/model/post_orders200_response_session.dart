//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_session.g.dart';

/// PostOrders200ResponseSession
///
/// Properties:
/// * [sessionId] - ID of the checkout session associated with the order
@BuiltValue()
abstract class PostOrders200ResponseSession implements Built<PostOrders200ResponseSession, PostOrders200ResponseSessionBuilder> {
  /// ID of the checkout session associated with the order
  @BuiltValueField(wireName: r'sessionId')
  String get sessionId;

  PostOrders200ResponseSession._();

  factory PostOrders200ResponseSession([void updates(PostOrders200ResponseSessionBuilder b)]) = _$PostOrders200ResponseSession;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseSessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponseSession> get serializer => _$PostOrders200ResponseSessionSerializer();
}

class _$PostOrders200ResponseSessionSerializer implements PrimitiveSerializer<PostOrders200ResponseSession> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponseSession, _$PostOrders200ResponseSession];

  @override
  final String wireName = r'PostOrders200ResponseSession';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponseSession object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sessionId';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponseSession object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseSessionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponseSession deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseSessionBuilder();
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

