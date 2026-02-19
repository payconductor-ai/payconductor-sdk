//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_card_tokenization200_response.g.dart';

/// PostCardTokenization200Response
///
/// Properties:
/// * [customerId] - ID of the customer associated with the created card
/// * [token] - Token of the created card for future transactions
@BuiltValue()
abstract class PostCardTokenization200Response implements Built<PostCardTokenization200Response, PostCardTokenization200ResponseBuilder> {
  /// ID of the customer associated with the created card
  @BuiltValueField(wireName: r'customerId')
  String get customerId;

  /// Token of the created card for future transactions
  @BuiltValueField(wireName: r'token')
  String get token;

  PostCardTokenization200Response._();

  factory PostCardTokenization200Response([void updates(PostCardTokenization200ResponseBuilder b)]) = _$PostCardTokenization200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostCardTokenization200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostCardTokenization200Response> get serializer => _$PostCardTokenization200ResponseSerializer();
}

class _$PostCardTokenization200ResponseSerializer implements PrimitiveSerializer<PostCardTokenization200Response> {
  @override
  final Iterable<Type> types = const [PostCardTokenization200Response, _$PostCardTokenization200Response];

  @override
  final String wireName = r'PostCardTokenization200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostCardTokenization200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customerId';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostCardTokenization200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostCardTokenization200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostCardTokenization200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostCardTokenization200ResponseBuilder();
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

