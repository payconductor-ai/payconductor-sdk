//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_nu_pay.g.dart';

/// PostOrders200ResponseNuPay
///
/// Properties:
/// * [paymentUrl] - NuPay payment URL
@BuiltValue()
abstract class PostOrders200ResponseNuPay implements Built<PostOrders200ResponseNuPay, PostOrders200ResponseNuPayBuilder> {
  /// NuPay payment URL
  @BuiltValueField(wireName: r'paymentUrl')
  String get paymentUrl;

  PostOrders200ResponseNuPay._();

  factory PostOrders200ResponseNuPay([void updates(PostOrders200ResponseNuPayBuilder b)]) = _$PostOrders200ResponseNuPay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseNuPayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponseNuPay> get serializer => _$PostOrders200ResponseNuPaySerializer();
}

class _$PostOrders200ResponseNuPaySerializer implements PrimitiveSerializer<PostOrders200ResponseNuPay> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponseNuPay, _$PostOrders200ResponseNuPay];

  @override
  final String wireName = r'PostOrders200ResponseNuPay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponseNuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'paymentUrl';
    yield serializers.serialize(
      object.paymentUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponseNuPay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseNuPayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paymentUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponseNuPay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseNuPayBuilder();
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

