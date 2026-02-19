//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/draft_expiration_in_seconds.dart';
import 'package:openapi/src/model/draft_available_payment_methods_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'draft.g.dart';

/// Used to create an order without generating a real payment. Use to create orders that will be paid later
///
/// Properties:
/// * [paymentMethod] 
/// * [expirationInSeconds] 
/// * [availablePaymentMethods] - Available payment methods for this order
@BuiltValue()
abstract class Draft implements Built<Draft, DraftBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  String get paymentMethod;

  @BuiltValueField(wireName: r'expirationInSeconds')
  DraftExpirationInSeconds? get expirationInSeconds;

  /// Available payment methods for this order
  @BuiltValueField(wireName: r'availablePaymentMethods')
  BuiltList<DraftAvailablePaymentMethodsInner>? get availablePaymentMethods;

  Draft._();

  factory Draft([void updates(DraftBuilder b)]) = _$Draft;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DraftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Draft> get serializer => _$DraftSerializer();
}

class _$DraftSerializer implements PrimitiveSerializer<Draft> {
  @override
  final Iterable<Type> types = const [Draft, _$Draft];

  @override
  final String wireName = r'Draft';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Draft object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    if (object.expirationInSeconds != null) {
      yield r'expirationInSeconds';
      yield serializers.serialize(
        object.expirationInSeconds,
        specifiedType: const FullType(DraftExpirationInSeconds),
      );
    }
    if (object.availablePaymentMethods != null) {
      yield r'availablePaymentMethods';
      yield serializers.serialize(
        object.availablePaymentMethods,
        specifiedType: const FullType(BuiltList, [FullType(DraftAvailablePaymentMethodsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Draft object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DraftBuilder result,
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
        case r'expirationInSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DraftExpirationInSeconds),
          ) as DraftExpirationInSeconds;
          result.expirationInSeconds.replace(valueDes);
          break;
        case r'availablePaymentMethods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DraftAvailablePaymentMethodsInner)]),
          ) as BuiltList<DraftAvailablePaymentMethodsInner>;
          result.availablePaymentMethods.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Draft deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DraftBuilder();
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

