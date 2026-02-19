//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/credit_card_installments.dart';
import 'package:openapi/src/model/credit_card_card.dart';
import 'package:openapi/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credit_card.g.dart';

/// CreditCard
///
/// Properties:
/// * [paymentMethod] 
/// * [card] 
/// * [installments] 
/// * [softDescriptor] - Text that will appear on the card statement (soft descriptor)
@BuiltValue()
abstract class CreditCard implements Built<CreditCard, CreditCardBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  PaymentMethod get paymentMethod;
  // enum paymentMethodEnum {  Pix,  CreditCard,  DebitCard,  BankSlip,  Crypto,  ApplePay,  NuPay,  PicPay,  AmazonPay,  SepaDebit,  GooglePay,  Draft,  };

  @BuiltValueField(wireName: r'card')
  CreditCardCard get card;

  @BuiltValueField(wireName: r'installments')
  CreditCardInstallments get installments;

  /// Text that will appear on the card statement (soft descriptor)
  @BuiltValueField(wireName: r'softDescriptor')
  String? get softDescriptor;

  CreditCard._();

  factory CreditCard([void updates(CreditCardBuilder b)]) = _$CreditCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreditCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreditCard> get serializer => _$CreditCardSerializer();
}

class _$CreditCardSerializer implements PrimitiveSerializer<CreditCard> {
  @override
  final Iterable<Type> types = const [CreditCard, _$CreditCard];

  @override
  final String wireName = r'CreditCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreditCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(PaymentMethod),
    );
    yield r'card';
    yield serializers.serialize(
      object.card,
      specifiedType: const FullType(CreditCardCard),
    );
    yield r'installments';
    yield serializers.serialize(
      object.installments,
      specifiedType: const FullType(CreditCardInstallments),
    );
    if (object.softDescriptor != null) {
      yield r'softDescriptor';
      yield serializers.serialize(
        object.softDescriptor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreditCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreditCardBuilder result,
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
        case r'card':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreditCardCard),
          ) as CreditCardCard;
          result.card.replace(valueDes);
          break;
        case r'installments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreditCardInstallments),
          ) as CreditCardInstallments;
          result.installments.replace(valueDes);
          break;
        case r'softDescriptor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.softDescriptor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreditCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditCardBuilder();
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

