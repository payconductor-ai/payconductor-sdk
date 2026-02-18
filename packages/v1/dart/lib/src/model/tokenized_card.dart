//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokenized_card.g.dart';

/// TokenizedCard
///
/// Properties:
/// * [firstSixCardNumber] - First 6 digits of the credit card
/// * [token] - Previously generated credit card token
@BuiltValue()
abstract class TokenizedCard implements Built<TokenizedCard, TokenizedCardBuilder> {
  /// First 6 digits of the credit card
  @BuiltValueField(wireName: r'firstSixCardNumber')
  String? get firstSixCardNumber;

  /// Previously generated credit card token
  @BuiltValueField(wireName: r'token')
  String get token;

  TokenizedCard._();

  factory TokenizedCard([void updates(TokenizedCardBuilder b)]) = _$TokenizedCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenizedCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenizedCard> get serializer => _$TokenizedCardSerializer();
}

class _$TokenizedCardSerializer implements PrimitiveSerializer<TokenizedCard> {
  @override
  final Iterable<Type> types = const [TokenizedCard, _$TokenizedCard];

  @override
  final String wireName = r'TokenizedCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenizedCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstSixCardNumber != null) {
      yield r'firstSixCardNumber';
      yield serializers.serialize(
        object.firstSixCardNumber,
        specifiedType: const FullType(String),
      );
    }
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenizedCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenizedCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstSixCardNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstSixCardNumber = valueDes;
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
  TokenizedCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenizedCardBuilder();
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

