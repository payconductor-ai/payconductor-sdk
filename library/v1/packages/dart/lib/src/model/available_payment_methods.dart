//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'available_payment_methods.g.dart';

class AvailablePaymentMethods extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pix')
  static const AvailablePaymentMethods Pix = _$Pix;
  @BuiltValueEnumConst(wireName: r'CreditCard')
  static const AvailablePaymentMethods CreditCard = _$CreditCard;
  @BuiltValueEnumConst(wireName: r'DebitCard')
  static const AvailablePaymentMethods DebitCard = _$DebitCard;
  @BuiltValueEnumConst(wireName: r'BankSlip')
  static const AvailablePaymentMethods BankSlip = _$BankSlip;
  @BuiltValueEnumConst(wireName: r'Crypto')
  static const AvailablePaymentMethods Crypto = _$Crypto;
  @BuiltValueEnumConst(wireName: r'ApplePay')
  static const AvailablePaymentMethods ApplePay = _$ApplePay;
  @BuiltValueEnumConst(wireName: r'NuPay')
  static const AvailablePaymentMethods NuPay = _$NuPay;
  @BuiltValueEnumConst(wireName: r'PicPay')
  static const AvailablePaymentMethods PicPay = _$PicPay;
  @BuiltValueEnumConst(wireName: r'AmazonPay')
  static const AvailablePaymentMethods AmazonPay = _$AmazonPay;
  @BuiltValueEnumConst(wireName: r'SepaDebit')
  static const AvailablePaymentMethods SepaDebit = _$SepaDebit;
  @BuiltValueEnumConst(wireName: r'GooglePay')
  static const AvailablePaymentMethods GooglePay = _$GooglePay;
  @BuiltValueEnumConst(wireName: r'Draft')
  static const AvailablePaymentMethods Draft = _$Draft;

  static Serializer<AvailablePaymentMethods> get serializer => _$availablePaymentMethodsSerializer;

  const AvailablePaymentMethods._(String name): super(name);

  static BuiltSet<AvailablePaymentMethods> get values => _$values;
  static AvailablePaymentMethods valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AvailablePaymentMethodsMixin = Object with _$AvailablePaymentMethodsMixin;

