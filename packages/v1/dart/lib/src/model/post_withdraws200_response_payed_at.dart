//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_withdraws200_response_payed_at.g.dart';

/// Date and time when the withdrawal was paid (ISO 8601 format)
@BuiltValue()
abstract class PostWithdraws200ResponsePayedAt implements Built<PostWithdraws200ResponsePayedAt, PostWithdraws200ResponsePayedAtBuilder> {
  /// Any Of [Date], [DateTime], [num]
  AnyOf get anyOf;

  PostWithdraws200ResponsePayedAt._();

  factory PostWithdraws200ResponsePayedAt([void updates(PostWithdraws200ResponsePayedAtBuilder b)]) = _$PostWithdraws200ResponsePayedAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostWithdraws200ResponsePayedAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostWithdraws200ResponsePayedAt> get serializer => _$PostWithdraws200ResponsePayedAtSerializer();
}

class _$PostWithdraws200ResponsePayedAtSerializer implements PrimitiveSerializer<PostWithdraws200ResponsePayedAt> {
  @override
  final Iterable<Type> types = const [PostWithdraws200ResponsePayedAt, _$PostWithdraws200ResponsePayedAt];

  @override
  final String wireName = r'PostWithdraws200ResponsePayedAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostWithdraws200ResponsePayedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostWithdraws200ResponsePayedAt object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostWithdraws200ResponsePayedAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostWithdraws200ResponsePayedAtBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Date), FullType(DateTime), FullType(Date), FullType(num), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

