//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_method.g.dart';

class PaymentMethod extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pix')
  static const PaymentMethod Pix = _$Pix;
  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const PaymentMethod CreditCard = _$CreditCard;
  @BuiltValueEnumConst(wireName: r'DebitCard')
  static const PaymentMethod DebitCard = _$DebitCard;
  @BuiltValueEnumConst(wireName: r'BankSlip')
  static const PaymentMethod BankSlip = _$BankSlip;
  @BuiltValueEnumConst(wireName: r'Crypto')
  static const PaymentMethod Crypto = _$Crypto;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const PaymentMethod ApplePay = _$ApplePay;
  @BuiltValueEnumConst(wireName: r'NuPay')
  static const PaymentMethod NuPay = _$NuPay;
  @BuiltValueEnumConst(wireName: r'PicPay')
  static const PaymentMethod PicPay = _$PicPay;
  @BuiltValueEnumConst(wireName: r'AmazonPay')
  static const PaymentMethod AmazonPay = _$AmazonPay;
  @BuiltValueEnumConst(wireName: r'SepaDebit')
  static const PaymentMethod SepaDebit = _$SepaDebit;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const PaymentMethod GooglePay = _$GooglePay;
  @BuiltValueEnumConst(wireName: r'Draft')
  static const PaymentMethod Draft = _$Draft;

  static Serializer<PaymentMethod> get serializer => _$paymentMethodSerializer;

  const PaymentMethod._(String name): super(name);

  static BuiltSet<PaymentMethod> get values => _$values;
  static PaymentMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaymentMethodMixin = Object with _$PaymentMethodMixin;

