//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pic_pay.g.dart';

/// PicPay
///
/// Properties:
/// * [paymentMethod] 
@BuiltValue()
abstract class PicPay implements Built<PicPay, PicPayBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  String get paymentMethod;

  PicPay._();

  factory PicPay([void updates(PicPayBuilder b)]) = _$PicPay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PicPayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PicPay> get serializer => _$PicPaySerializer();
}

class _$PicPaySerializer implements PrimitiveSerializer<PicPay> {
  @override
  final Iterable<Type> types = const [PicPay, _$PicPay];

  @override
  final String wireName = r'PicPay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PicPay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PicPay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PicPayBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PicPay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PicPayBuilder();
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

