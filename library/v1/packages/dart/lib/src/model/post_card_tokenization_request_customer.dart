//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/customer_address.dart';
import 'package:openapi/src/model/post_card_tokenization_request_customer_any_of.dart';
import 'package:openapi/src/model/customer.dart';
import 'package:openapi/src/model/document_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'post_card_tokenization_request_customer.g.dart';

/// PostCardTokenizationRequestCustomer
///
/// Properties:
/// * [address] 
/// * [documentNumber] - Customer CPF or CNPJ without formatting
/// * [documentType] 
/// * [email] - Customer email
/// * [name] - Customer full name
/// * [phoneNumber] - Customer phone number in +55 DD 9XXXXXXXX format
/// * [id] - ID do cliente existente
@BuiltValue()
abstract class PostCardTokenizationRequestCustomer implements Built<PostCardTokenizationRequestCustomer, PostCardTokenizationRequestCustomerBuilder> {
  /// Any Of [Customer], [PostCardTokenizationRequestCustomerAnyOf]
  AnyOf get anyOf;

  PostCardTokenizationRequestCustomer._();

  factory PostCardTokenizationRequestCustomer([void updates(PostCardTokenizationRequestCustomerBuilder b)]) = _$PostCardTokenizationRequestCustomer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostCardTokenizationRequestCustomerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostCardTokenizationRequestCustomer> get serializer => _$PostCardTokenizationRequestCustomerSerializer();
}

class _$PostCardTokenizationRequestCustomerSerializer implements PrimitiveSerializer<PostCardTokenizationRequestCustomer> {
  @override
  final Iterable<Type> types = const [PostCardTokenizationRequestCustomer, _$PostCardTokenizationRequestCustomer];

  @override
  final String wireName = r'PostCardTokenizationRequestCustomer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostCardTokenizationRequestCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostCardTokenizationRequestCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostCardTokenizationRequestCustomer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostCardTokenizationRequestCustomerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Customer), FullType(PostCardTokenizationRequestCustomerAnyOf), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

