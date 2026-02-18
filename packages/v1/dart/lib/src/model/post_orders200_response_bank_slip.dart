//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders200_response_bank_slip.g.dart';

/// PostOrders200ResponseBankSlip
///
/// Properties:
/// * [barCode] - Bank slip bar code
/// * [digitableLine] - Bank slip digitable line
/// * [pdfUrl] - Bank slip PDF URL
@BuiltValue()
abstract class PostOrders200ResponseBankSlip implements Built<PostOrders200ResponseBankSlip, PostOrders200ResponseBankSlipBuilder> {
  /// Bank slip bar code
  @BuiltValueField(wireName: r'barCode')
  String get barCode;

  /// Bank slip digitable line
  @BuiltValueField(wireName: r'digitableLine')
  String get digitableLine;

  /// Bank slip PDF URL
  @BuiltValueField(wireName: r'pdfUrl')
  String? get pdfUrl;

  PostOrders200ResponseBankSlip._();

  factory PostOrders200ResponseBankSlip([void updates(PostOrders200ResponseBankSlipBuilder b)]) = _$PostOrders200ResponseBankSlip;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrders200ResponseBankSlipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrders200ResponseBankSlip> get serializer => _$PostOrders200ResponseBankSlipSerializer();
}

class _$PostOrders200ResponseBankSlipSerializer implements PrimitiveSerializer<PostOrders200ResponseBankSlip> {
  @override
  final Iterable<Type> types = const [PostOrders200ResponseBankSlip, _$PostOrders200ResponseBankSlip];

  @override
  final String wireName = r'PostOrders200ResponseBankSlip';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrders200ResponseBankSlip object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'barCode';
    yield serializers.serialize(
      object.barCode,
      specifiedType: const FullType(String),
    );
    yield r'digitableLine';
    yield serializers.serialize(
      object.digitableLine,
      specifiedType: const FullType(String),
    );
    if (object.pdfUrl != null) {
      yield r'pdfUrl';
      yield serializers.serialize(
        object.pdfUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrders200ResponseBankSlip object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrders200ResponseBankSlipBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'barCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.barCode = valueDes;
          break;
        case r'digitableLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.digitableLine = valueDes;
          break;
        case r'pdfUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pdfUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrders200ResponseBankSlip deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrders200ResponseBankSlipBuilder();
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

