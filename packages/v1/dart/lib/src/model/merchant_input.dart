//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'merchant_input.g.dart';

/// Merchant data for order or withdrawal
///
/// Properties:
/// * [document] - Merchant CPF or CNPJ without formatting
/// * [email] - Merchant email
/// * [name] - Merchant name
@BuiltValue()
abstract class MerchantInput implements Built<MerchantInput, MerchantInputBuilder> {
  /// Merchant CPF or CNPJ without formatting
  @BuiltValueField(wireName: r'document')
  String get document;

  /// Merchant email
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Merchant name
  @BuiltValueField(wireName: r'name')
  String get name;

  MerchantInput._();

  factory MerchantInput([void updates(MerchantInputBuilder b)]) = _$MerchantInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MerchantInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MerchantInput> get serializer => _$MerchantInputSerializer();
}

class _$MerchantInputSerializer implements PrimitiveSerializer<MerchantInput> {
  @override
  final Iterable<Type> types = const [MerchantInput, _$MerchantInput];

  @override
  final String wireName = r'MerchantInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MerchantInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'document';
    yield serializers.serialize(
      object.document,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MerchantInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MerchantInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'document':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.document = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MerchantInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MerchantInputBuilder();
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

