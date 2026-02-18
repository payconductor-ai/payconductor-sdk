//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'bank_slip_expiration_in_days.g.dart';

/// Days until bank slip expires
@BuiltValue()
abstract class BankSlipExpirationInDays implements Built<BankSlipExpirationInDays, BankSlipExpirationInDaysBuilder> {
  /// Any Of [int]
  AnyOf get anyOf;

  BankSlipExpirationInDays._();

  factory BankSlipExpirationInDays([void updates(BankSlipExpirationInDaysBuilder b)]) = _$BankSlipExpirationInDays;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BankSlipExpirationInDaysBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BankSlipExpirationInDays> get serializer => _$BankSlipExpirationInDaysSerializer();
}

class _$BankSlipExpirationInDaysSerializer implements PrimitiveSerializer<BankSlipExpirationInDays> {
  @override
  final Iterable<Type> types = const [BankSlipExpirationInDays, _$BankSlipExpirationInDays];

  @override
  final String wireName = r'BankSlipExpirationInDays';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BankSlipExpirationInDays object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    BankSlipExpirationInDays object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  BankSlipExpirationInDays deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BankSlipExpirationInDaysBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType(int), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

