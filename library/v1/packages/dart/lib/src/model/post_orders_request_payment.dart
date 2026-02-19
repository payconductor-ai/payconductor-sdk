//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pic_pay.dart';
import 'package:openapi/src/model/nu_pay.dart';
import 'package:openapi/src/model/nu_pay_nu_pay.dart';
import 'package:openapi/src/model/credit_card_installments.dart';
import 'package:openapi/src/model/available_payment_methods.dart';
import 'package:openapi/src/model/draft_expiration_in_seconds.dart';
import 'package:openapi/src/model/credit_card_card.dart';
import 'package:openapi/src/model/pix.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/bank_slip_expiration_in_days.dart';
import 'package:openapi/src/model/draft.dart';
import 'package:openapi/src/model/payment_method.dart';
import 'package:openapi/src/model/credit_card.dart';
import 'package:openapi/src/model/bank_slip.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'post_orders_request_payment.g.dart';

/// Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
///
/// Properties:
/// * [paymentMethod] 
/// * [expirationInSeconds] 
/// * [card] 
/// * [installments] 
/// * [softDescriptor] - Text that will appear on the card statement (soft descriptor)
/// * [expirationInDays] 
/// * [nuPay] 
/// * [availablePaymentMethods] - Available payment methods for this order
@BuiltValue()
abstract class PostOrdersRequestPayment implements Built<PostOrdersRequestPayment, PostOrdersRequestPaymentBuilder> {
  /// One Of [BankSlip], [CreditCard], [Draft], [NuPay], [PicPay], [Pix]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'paymentMethod';

  static const Map<String, Type> discriminatorMapping = {
    r'BankSlip': BankSlip,
    r'CreditCard': CreditCard,
    r'Draft': Draft,
    r'NuPay': NuPay,
    r'PicPay': PicPay,
    r'Pix': Pix,
  };

  PostOrdersRequestPayment._();

  factory PostOrdersRequestPayment([void updates(PostOrdersRequestPaymentBuilder b)]) = _$PostOrdersRequestPayment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrdersRequestPaymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrdersRequestPayment> get serializer => _$PostOrdersRequestPaymentSerializer();
}

extension PostOrdersRequestPaymentDiscriminatorExt on PostOrdersRequestPayment {
    String? get discriminatorValue {
        if (this is BankSlip) {
            return r'BankSlip';
        }
        if (this is CreditCard) {
            return r'CreditCard';
        }
        if (this is Draft) {
            return r'Draft';
        }
        if (this is NuPay) {
            return r'NuPay';
        }
        if (this is PicPay) {
            return r'PicPay';
        }
        if (this is Pix) {
            return r'Pix';
        }
        return null;
    }
}
extension PostOrdersRequestPaymentBuilderDiscriminatorExt on PostOrdersRequestPaymentBuilder {
    String? get discriminatorValue {
        if (this is BankSlipBuilder) {
            return r'BankSlip';
        }
        if (this is CreditCardBuilder) {
            return r'CreditCard';
        }
        if (this is DraftBuilder) {
            return r'Draft';
        }
        if (this is NuPayBuilder) {
            return r'NuPay';
        }
        if (this is PicPayBuilder) {
            return r'PicPay';
        }
        if (this is PixBuilder) {
            return r'Pix';
        }
        return null;
    }
}

class _$PostOrdersRequestPaymentSerializer implements PrimitiveSerializer<PostOrdersRequestPayment> {
  @override
  final Iterable<Type> types = const [PostOrdersRequestPayment, _$PostOrdersRequestPayment];

  @override
  final String wireName = r'PostOrdersRequestPayment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrdersRequestPayment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrdersRequestPayment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PostOrdersRequestPayment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrdersRequestPaymentBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(PostOrdersRequestPayment.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [BankSlip, CreditCard, Draft, NuPay, PicPay, Pix, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'BankSlip':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(BankSlip),
        ) as BankSlip;
        oneOfType = BankSlip;
        break;
      case r'CreditCard':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(CreditCard),
        ) as CreditCard;
        oneOfType = CreditCard;
        break;
      case r'Draft':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Draft),
        ) as Draft;
        oneOfType = Draft;
        break;
      case r'NuPay':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NuPay),
        ) as NuPay;
        oneOfType = NuPay;
        break;
      case r'PicPay':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PicPay),
        ) as PicPay;
        oneOfType = PicPay;
        break;
      case r'Pix':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Pix),
        ) as Pix;
        oneOfType = Pix;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

