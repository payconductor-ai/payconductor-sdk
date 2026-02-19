//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/nu_pay_nu_pay.dart';
import 'package:openapi/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nu_pay.g.dart';

/// NuPay
///
/// Properties:
/// * [paymentMethod] 
/// * [nuPay] 
@BuiltValue()
abstract class NuPay implements Built<NuPay, NuPayBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  PaymentMethod get paymentMethod;
  // enum paymentMethodEnum {  Pix,  CreditCard,  DebitCard,  BankSlip,  Crypto,  ApplePay,  NuPay,  PicPay,  AmazonPay,  SepaDebit,  GooglePay,  Draft,  };

  @BuiltValueField(wireName: r'nuPay')
  NuPayNuPay get nuPay;

  NuPay._();

  factory NuPay([void updates(NuPayBuilder b)]) = _$NuPay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NuPayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NuPay> get serializer => _$NuPaySerializer();
}

class _$NuPaySerializer implements PrimitiveSerializer<NuPay> {
  @override
  final Iterable<Type> types = const [NuPay, _$NuPay];

  @override
  final String wireName = r'NuPay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(PaymentMethod),
    );
    yield r'nuPay';
    yield serializers.serialize(
      object.nuPay,
      specifiedType: const FullType(NuPayNuPay),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NuPayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentMethod),
          ) as PaymentMethod;
          result.paymentMethod = valueDes;
          break;
        case r'nuPay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NuPayNuPay),
          ) as NuPayNuPay;
          result.nuPay.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NuPay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NuPayBuilder();
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

