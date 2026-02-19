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
import 'package:one_of/any_of.dart';

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
  /// Any Of [BankSlip], [CreditCard], [Draft], [NuPay], [PicPay], [Pix]
  AnyOf get anyOf;

  PostOrdersRequestPayment._();

  factory PostOrdersRequestPayment([void updates(PostOrdersRequestPaymentBuilder b)]) = _$PostOrdersRequestPayment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrdersRequestPaymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrdersRequestPayment> get serializer => _$PostOrdersRequestPaymentSerializer();
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
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  PostOrdersRequestPayment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrdersRequestPaymentBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Pix), FullType(CreditCard), FullType(BankSlip), FullType(NuPay), FullType(PicPay), FullType(Draft), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

