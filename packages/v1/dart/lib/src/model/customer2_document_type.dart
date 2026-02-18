//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'customer2_document_type.g.dart';

/// Document type: Cpf or Cnpj
@BuiltValue()
abstract class Customer2DocumentType implements Built<Customer2DocumentType, Customer2DocumentTypeBuilder> {
  /// Any Of [String]
  AnyOf get anyOf;

  Customer2DocumentType._();

  factory Customer2DocumentType([void updates(Customer2DocumentTypeBuilder b)]) = _$Customer2DocumentType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Customer2DocumentTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Customer2DocumentType> get serializer => _$Customer2DocumentTypeSerializer();
}

class _$Customer2DocumentTypeSerializer implements PrimitiveSerializer<Customer2DocumentType> {
  @override
  final Iterable<Type> types = const [Customer2DocumentType, _$Customer2DocumentType];

  @override
  final String wireName = r'Customer2DocumentType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Customer2DocumentType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Customer2DocumentType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Customer2DocumentType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Customer2DocumentTypeBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(String), FullType(String), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

