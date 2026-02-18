//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'credit_card_installments.g.dart';

/// Number of installments
@BuiltValue()
abstract class CreditCardInstallments implements Built<CreditCardInstallments, CreditCardInstallmentsBuilder> {
  /// Any Of [int]
  AnyOf get anyOf;

  CreditCardInstallments._();

  factory CreditCardInstallments([void updates(CreditCardInstallmentsBuilder b)]) = _$CreditCardInstallments;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreditCardInstallmentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreditCardInstallments> get serializer => _$CreditCardInstallmentsSerializer();
}

class _$CreditCardInstallmentsSerializer implements PrimitiveSerializer<CreditCardInstallments> {
  @override
  final Iterable<Type> types = const [CreditCardInstallments, _$CreditCardInstallments];

  @override
  final String wireName = r'CreditCardInstallments';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreditCardInstallments object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    CreditCardInstallments object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  CreditCardInstallments deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditCardInstallmentsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType(int), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

