//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nu_pay_nu_pay.g.dart';

/// Specific data for NuPay payment
///
/// Properties:
/// * [cancelUrl] - Payment cancellation URL
/// * [merchantName] - Merchant name
/// * [returnUrl] - Return URL after payment completion
/// * [storeName] - Store name
@BuiltValue()
abstract class NuPayNuPay implements Built<NuPayNuPay, NuPayNuPayBuilder> {
  /// Payment cancellation URL
  @BuiltValueField(wireName: r'cancelUrl')
  String get cancelUrl;

  /// Merchant name
  @BuiltValueField(wireName: r'merchantName')
  String get merchantName;

  /// Return URL after payment completion
  @BuiltValueField(wireName: r'returnUrl')
  String get returnUrl;

  /// Store name
  @BuiltValueField(wireName: r'storeName')
  String? get storeName;

  NuPayNuPay._();

  factory NuPayNuPay([void updates(NuPayNuPayBuilder b)]) = _$NuPayNuPay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NuPayNuPayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NuPayNuPay> get serializer => _$NuPayNuPaySerializer();
}

class _$NuPayNuPaySerializer implements PrimitiveSerializer<NuPayNuPay> {
  @override
  final Iterable<Type> types = const [NuPayNuPay, _$NuPayNuPay];

  @override
  final String wireName = r'NuPayNuPay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NuPayNuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cancelUrl';
    yield serializers.serialize(
      object.cancelUrl,
      specifiedType: const FullType(String),
    );
    yield r'merchantName';
    yield serializers.serialize(
      object.merchantName,
      specifiedType: const FullType(String),
    );
    yield r'returnUrl';
    yield serializers.serialize(
      object.returnUrl,
      specifiedType: const FullType(String),
    );
    if (object.storeName != null) {
      yield r'storeName';
      yield serializers.serialize(
        object.storeName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NuPayNuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NuPayNuPayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cancelUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cancelUrl = valueDes;
          break;
        case r'merchantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.merchantName = valueDes;
          break;
        case r'returnUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.returnUrl = valueDes;
          break;
        case r'storeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storeName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NuPayNuPay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NuPayNuPayBuilder();
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

