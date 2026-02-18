//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'pix_expiration_in_seconds.g.dart';

/// PIX expiration time in seconds
@BuiltValue()
abstract class PixExpirationInSeconds implements Built<PixExpirationInSeconds, PixExpirationInSecondsBuilder> {
  /// Any Of [int]
  AnyOf get anyOf;

  PixExpirationInSeconds._();

  factory PixExpirationInSeconds([void updates(PixExpirationInSecondsBuilder b)]) = _$PixExpirationInSeconds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PixExpirationInSecondsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PixExpirationInSeconds> get serializer => _$PixExpirationInSecondsSerializer();
}

class _$PixExpirationInSecondsSerializer implements PrimitiveSerializer<PixExpirationInSeconds> {
  @override
  final Iterable<Type> types = const [PixExpirationInSeconds, _$PixExpirationInSeconds];

  @override
  final String wireName = r'PixExpirationInSeconds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PixExpirationInSeconds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PixExpirationInSeconds object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PixExpirationInSeconds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PixExpirationInSecondsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(int), FullType(int), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

