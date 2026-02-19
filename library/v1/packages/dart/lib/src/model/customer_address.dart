//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_address.g.dart';

/// Schema for creating a new address
///
/// Properties:
/// * [city] - City name
/// * [country] - Country code in ISO 3166-1 alpha-2 format
/// * [neighborhood] - Neighborhood name
/// * [number] - Address number
/// * [state] - State code in ISO 3166-2 format
/// * [street] - Street name
/// * [zipCode] - ZIP code without formatting
@BuiltValue()
abstract class CustomerAddress implements Built<CustomerAddress, CustomerAddressBuilder> {
  /// City name
  @BuiltValueField(wireName: r'city')
  String get city;

  /// Country code in ISO 3166-1 alpha-2 format
  @BuiltValueField(wireName: r'country')
  String get country;

  /// Neighborhood name
  @BuiltValueField(wireName: r'neighborhood')
  String get neighborhood;

  /// Address number
  @BuiltValueField(wireName: r'number')
  String get number;

  /// State code in ISO 3166-2 format
  @BuiltValueField(wireName: r'state')
  String get state;

  /// Street name
  @BuiltValueField(wireName: r'street')
  String get street;

  /// ZIP code without formatting
  @BuiltValueField(wireName: r'zipCode')
  String get zipCode;

  CustomerAddress._();

  factory CustomerAddress([void updates(CustomerAddressBuilder b)]) = _$CustomerAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerAddressBuilder b) => b
      ..country = 'BR';

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerAddress> get serializer => _$CustomerAddressSerializer();
}

class _$CustomerAddressSerializer implements PrimitiveSerializer<CustomerAddress> {
  @override
  final Iterable<Type> types = const [CustomerAddress, _$CustomerAddress];

  @override
  final String wireName = r'CustomerAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'city';
    yield serializers.serialize(
      object.city,
      specifiedType: const FullType(String),
    );
    yield r'country';
    yield serializers.serialize(
      object.country,
      specifiedType: const FullType(String),
    );
    yield r'neighborhood';
    yield serializers.serialize(
      object.neighborhood,
      specifiedType: const FullType(String),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    yield r'street';
    yield serializers.serialize(
      object.street,
      specifiedType: const FullType(String),
    );
    yield r'zipCode';
    yield serializers.serialize(
      object.zipCode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerAddressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        case r'neighborhood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.neighborhood = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'street':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.street = valueDes;
          break;
        case r'zipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.zipCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerAddressBuilder();
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

