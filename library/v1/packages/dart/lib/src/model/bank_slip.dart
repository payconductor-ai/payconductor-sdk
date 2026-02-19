//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/bank_slip_expiration_in_days.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bank_slip.g.dart';

/// BankSlip
///
/// Properties:
/// * [paymentMethod] 
/// * [expirationInDays] 
@BuiltValue()
abstract class BankSlip implements Built<BankSlip, BankSlipBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  String get paymentMethod;

  @BuiltValueField(wireName: r'expirationInDays')
  BankSlipExpirationInDays? get expirationInDays;

  BankSlip._();

  factory BankSlip([void updates(BankSlipBuilder b)]) = _$BankSlip;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BankSlipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BankSlip> get serializer => _$BankSlipSerializer();
}

class _$BankSlipSerializer implements PrimitiveSerializer<BankSlip> {
  @override
  final Iterable<Type> types = const [BankSlip, _$BankSlip];

  @override
  final String wireName = r'BankSlip';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BankSlip object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    if (object.expirationInDays != null) {
      yield r'expirationInDays';
      yield serializers.serialize(
        object.expirationInDays,
        specifiedType: const FullType(BankSlipExpirationInDays),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BankSlip object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BankSlipBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'expirationInDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BankSlipExpirationInDays),
          ) as BankSlipExpirationInDays;
          result.expirationInDays.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BankSlip deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BankSlipBuilder();
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

