//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_pix.g.dart';

/// PIX data
///
/// Properties:
/// * [copyAndPasteCode] - PIX copy and paste code
/// * [qrCodeUrl] - PIX QR Code image URL
/// * [endToEndId] - PIX E2E ID
@BuiltValue()
abstract class PostOrders200ResponsePix implements Built<PostOrders200ResponsePix, PostOrders200ResponsePixBuilder> {
  /// PIX copy and paste code
  @BuiltValueField(wireName: r'copyAndPasteCode')
  String get copyAndPasteCode;

  /// PIX QR Code image URL
  @BuiltValueField(wireName: r'qrCodeUrl')
  String get qrCodeUrl;

  /// PIX E2E ID
  @BuiltValueField(wireName: r'endToEndId')
  String? get endToEndId;

  PostOrders200ResponsePix._();

  factory PostOrders200ResponsePix([void updates(PostOrders200ResponsePixBuilder b)]) = _$PostOrders200ResponsePix;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponsePixBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponsePix> get serializer => _$PostOrders200ResponsePixSerializer();
}

class _$PostOrders200ResponsePixSerializer implements PrimitiveSerializer<PostOrders200ResponsePix> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponsePix, _$PostOrders200ResponsePix];

  @override
  final String wireName = r'PostOrders200ResponsePix';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponsePix object, {
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
    yield r'endToEndId';
    yield object.endToEndId == null ? null : serializers.serialize(
      object.endToEndId,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponsePix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponsePixBuilder result,
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
        case r'endToEndId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endToEndId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponsePix deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponsePixBuilder();
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

