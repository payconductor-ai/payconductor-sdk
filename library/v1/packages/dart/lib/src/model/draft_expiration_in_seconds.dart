//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'draft_expiration_in_seconds.g.dart';

/// Order expiration time in seconds
@BuiltValue()
abstract class DraftExpirationInSeconds implements Built<DraftExpirationInSeconds, DraftExpirationInSecondsBuilder> {
  /// Any Of [int]
  AnyOf get anyOf;

  DraftExpirationInSeconds._();

  factory DraftExpirationInSeconds([void updates(DraftExpirationInSecondsBuilder b)]) = _$DraftExpirationInSeconds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DraftExpirationInSecondsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DraftExpirationInSeconds> get serializer => _$DraftExpirationInSecondsSerializer();
}

class _$DraftExpirationInSecondsSerializer implements PrimitiveSerializer<DraftExpirationInSeconds> {
  @override
  final Iterable<Type> types = const [DraftExpirationInSeconds, _$DraftExpirationInSeconds];

  @override
  final String wireName = r'DraftExpirationInSeconds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DraftExpirationInSeconds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    DraftExpirationInSeconds object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  DraftExpirationInSeconds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DraftExpirationInSecondsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType(int), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

