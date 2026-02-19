//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/customer_address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer1.g.dart';

/// Schema for creating a new customer
///
/// Properties:
/// * [address] 
/// * [documentNumber] - Customer CPF or CNPJ without formatting
/// * [documentType] 
/// * [email] - Customer email
/// * [name] - Customer full name
/// * [phoneNumber] - Customer phone number in +55 DD 9XXXXXXXX format
@BuiltValue()
abstract class Customer1 implements Built<Customer1, Customer1Builder> {
  @BuiltValueField(wireName: r'address')
  CustomerAddress? get address;

  /// Customer CPF or CNPJ without formatting
  @BuiltValueField(wireName: r'documentNumber')
  String? get documentNumber;

  @BuiltValueField(wireName: r'documentType')
  Customer1DocumentTypeEnum? get documentType;
  // enum documentTypeEnum {  Cpf,  Cnpj,  };

  /// Customer email
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Customer full name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Customer phone number in +55 DD 9XXXXXXXX format
  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  Customer1._();

  factory Customer1([void updates(Customer1Builder b)]) = _$Customer1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Customer1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Customer1> get serializer => _$Customer1Serializer();
}

class _$Customer1Serializer implements PrimitiveSerializer<Customer1> {
  @override
  final Iterable<Type> types = const [Customer1, _$Customer1];

  @override
  final String wireName = r'Customer1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Customer1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(CustomerAddress),
      );
    }
    if (object.documentNumber != null) {
      yield r'documentNumber';
      yield serializers.serialize(
        object.documentNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.documentType != null) {
      yield r'documentType';
      yield serializers.serialize(
        object.documentType,
        specifiedType: const FullType(Customer1DocumentTypeEnum),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Customer1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Customer1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerAddress),
          ) as CustomerAddress;
          result.address.replace(valueDes);
          break;
        case r'documentNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.documentNumber = valueDes;
          break;
        case r'documentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Customer1DocumentTypeEnum),
          ) as Customer1DocumentTypeEnum;
          result.documentType = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Customer1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Customer1Builder();
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

class Customer1DocumentTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Cpf')
  static const Customer1DocumentTypeEnum cpf = _$customer1DocumentTypeEnum_cpf;
  @BuiltValueEnumConst(wireName: r'Cnpj')
  static const Customer1DocumentTypeEnum cnpj = _$customer1DocumentTypeEnum_cnpj;

  static Serializer<Customer1DocumentTypeEnum> get serializer => _$customer1DocumentTypeEnumSerializer;

  const Customer1DocumentTypeEnum._(String name): super(name);

  static BuiltSet<Customer1DocumentTypeEnum> get values => _$customer1DocumentTypeEnumValues;
  static Customer1DocumentTypeEnum valueOf(String name) => _$customer1DocumentTypeEnumValueOf(name);
}

