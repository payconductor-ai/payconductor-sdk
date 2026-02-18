//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_pic_pay.g.dart';

/// PostOrders200ResponsePicPay
///
/// Properties:
/// * [copyAndPasteCode] - PicPay copy and paste code
/// * [qrCodeUrl] - PicPay QR Code image URL
@BuiltValue()
abstract class PostOrders200ResponsePicPay implements Built<PostOrders200ResponsePicPay, PostOrders200ResponsePicPayBuilder> {
  /// PicPay copy and paste code
  @BuiltValueField(wireName: r'copyAndPasteCode')
  String get copyAndPasteCode;

  /// PicPay QR Code image URL
  @BuiltValueField(wireName: r'qrCodeUrl')
  String get qrCodeUrl;

  PostOrders200ResponsePicPay._();

  factory PostOrders200ResponsePicPay([void updates(PostOrders200ResponsePicPayBuilder b)]) = _$PostOrders200ResponsePicPay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponsePicPayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponsePicPay> get serializer => _$PostOrders200ResponsePicPaySerializer();
}

class _$PostOrders200ResponsePicPaySerializer implements PrimitiveSerializer<PostOrders200ResponsePicPay> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponsePicPay, _$PostOrders200ResponsePicPay];

  @override
  final String wireName = r'PostOrders200ResponsePicPay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponsePicPay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'copyAndPasteCode';
    yield serializers.serialize(
      object.copyAndPasteCode,
      specifiedType: const FullType(String),
    );
    yield r'qrCodeUrl';
    yield serializers.serialize(
      object.qrCodeUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponsePicPay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponsePicPayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'copyAndPasteCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.copyAndPasteCode = valueDes;
          break;
        case r'qrCodeUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qrCodeUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponsePicPay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponsePicPayBuilder();
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

