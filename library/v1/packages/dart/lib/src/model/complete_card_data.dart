//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/complete_card_data_expiration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_card_data.g.dart';

/// CompleteCardData
///
/// Properties:
/// * [cvv] - Card security code (CVV)
/// * [expiration] 
/// * [holderName] - Card holder name
/// * [number] - Credit card number
@BuiltValue()
abstract class CompleteCardData implements Built<CompleteCardData, CompleteCardDataBuilder> {
  /// Card security code (CVV)
  @BuiltValueField(wireName: r'cvv')
  String get cvv;

  @BuiltValueField(wireName: r'expiration')
  CompleteCardDataExpiration get expiration;

  /// Card holder name
  @BuiltValueField(wireName: r'holderName')
  String get holderName;

  /// Credit card number
  @BuiltValueField(wireName: r'number')
  String get number;

  CompleteCardData._();

  factory CompleteCardData([void updates(CompleteCardDataBuilder b)]) = _$CompleteCardData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompleteCardDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompleteCardData> get serializer => _$CompleteCardDataSerializer();
}

class _$CompleteCardDataSerializer implements PrimitiveSerializer<CompleteCardData> {
  @override
  final Iterable<Type> types = const [CompleteCardData, _$CompleteCardData];

  @override
  final String wireName = r'CompleteCardData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompleteCardData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cvv';
    yield serializers.serialize(
      object.cvv,
      specifiedType: const FullType(String),
    );
    yield r'expiration';
    yield serializers.serialize(
      object.expiration,
      specifiedType: const FullType(CompleteCardDataExpiration),
    );
    yield r'holderName';
    yield serializers.serialize(
      object.holderName,
      specifiedType: const FullType(String),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CompleteCardData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompleteCardDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cvv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cvv = valueDes;
          break;
        case r'expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CompleteCardDataExpiration),
          ) as CompleteCardDataExpiration;
          result.expiration.replace(valueDes);
          break;
        case r'holderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.holderName = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CompleteCardData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompleteCardDataBuilder();
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

