//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/complete_card_data_expiration.dart';
import 'package:openapi/src/model/tokenized_card.dart';
import 'package:openapi/src/model/complete_card_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'credit_card_card.g.dart';

/// CreditCardCard
///
/// Properties:
/// * [firstSixCardNumber] - First 6 digits of the credit card
/// * [token] - Previously generated credit card token
/// * [cvv] - Card security code (CVV)
/// * [expiration] 
/// * [holderName] - Card holder name
/// * [number] - Credit card number
@BuiltValue()
abstract class CreditCardCard implements Built<CreditCardCard, CreditCardCardBuilder> {
  /// Any Of [CompleteCardData], [TokenizedCard]
  AnyOf get anyOf;

  CreditCardCard._();

  factory CreditCardCard([void updates(CreditCardCardBuilder b)]) = _$CreditCardCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreditCardCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreditCardCard> get serializer => _$CreditCardCardSerializer();
}

class _$CreditCardCardSerializer implements PrimitiveSerializer<CreditCardCard> {
  @override
  final Iterable<Type> types = const [CreditCardCard, _$CreditCardCard];

  @override
  final String wireName = r'CreditCardCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreditCardCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CreditCardCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  CreditCardCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditCardCardBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(TokenizedCard), FullType(CompleteCardData), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

