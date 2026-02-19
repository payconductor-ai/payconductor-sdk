//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/post_card_tokenization_request_customer.dart';
import 'package:openapi/src/model/complete_card_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_card_tokenization_request.g.dart';

/// Data for creating a customer card
///
/// Properties:
/// * [card] 
/// * [saveCard] - Indicates if the card should be saved for future use
/// * [customer] 
@BuiltValue()
abstract class PostCardTokenizationRequest implements Built<PostCardTokenizationRequest, PostCardTokenizationRequestBuilder> {
  @BuiltValueField(wireName: r'card')
  CompleteCardData get card;

  /// Indicates if the card should be saved for future use
  @BuiltValueField(wireName: r'saveCard')
  bool get saveCard;

  @BuiltValueField(wireName: r'customer')
  PostCardTokenizationRequestCustomer get customer;

  PostCardTokenizationRequest._();

  factory PostCardTokenizationRequest([void updates(PostCardTokenizationRequestBuilder b)]) = _$PostCardTokenizationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostCardTokenizationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostCardTokenizationRequest> get serializer => _$PostCardTokenizationRequestSerializer();
}

class _$PostCardTokenizationRequestSerializer implements PrimitiveSerializer<PostCardTokenizationRequest> {
  @override
  final Iterable<Type> types = const [PostCardTokenizationRequest, _$PostCardTokenizationRequest];

  @override
  final String wireName = r'PostCardTokenizationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostCardTokenizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'card';
    yield serializers.serialize(
      object.card,
      specifiedType: const FullType(CompleteCardData),
    );
    yield r'saveCard';
    yield serializers.serialize(
      object.saveCard,
      specifiedType: const FullType(bool),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(PostCardTokenizationRequestCustomer),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostCardTokenizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostCardTokenizationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompleteCardData),
          ) as CompleteCardData;
          result.card.replace(valueDes);
          break;
        case r'saveCard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.saveCard = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostCardTokenizationRequestCustomer),
          ) as PostCardTokenizationRequestCustomer;
          result.customer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostCardTokenizationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostCardTokenizationRequestBuilder();
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

