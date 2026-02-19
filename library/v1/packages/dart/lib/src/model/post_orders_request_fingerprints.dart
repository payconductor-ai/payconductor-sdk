//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_orders_request_fingerprints.g.dart';

/// PostOrdersRequestFingerprints
///
/// Properties:
/// * [threatMetrixFingerprintId] - ThreatMetrix fingerprint ID for fraud analysis
@BuiltValue()
abstract class PostOrdersRequestFingerprints implements Built<PostOrdersRequestFingerprints, PostOrdersRequestFingerprintsBuilder> {
  /// ThreatMetrix fingerprint ID for fraud analysis
  @BuiltValueField(wireName: r'threatMetrixFingerprintId')
  String? get threatMetrixFingerprintId;

  PostOrdersRequestFingerprints._();

  factory PostOrdersRequestFingerprints([void updates(PostOrdersRequestFingerprintsBuilder b)]) = _$PostOrdersRequestFingerprints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostOrdersRequestFingerprintsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostOrdersRequestFingerprints> get serializer => _$PostOrdersRequestFingerprintsSerializer();
}

class _$PostOrdersRequestFingerprintsSerializer implements PrimitiveSerializer<PostOrdersRequestFingerprints> {
  @override
  final Iterable<Type> types = const [PostOrdersRequestFingerprints, _$PostOrdersRequestFingerprints];

  @override
  final String wireName = r'PostOrdersRequestFingerprints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostOrdersRequestFingerprints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.threatMetrixFingerprintId != null) {
      yield r'threatMetrixFingerprintId';
      yield serializers.serialize(
        object.threatMetrixFingerprintId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PostOrdersRequestFingerprints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostOrdersRequestFingerprintsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'threatMetrixFingerprintId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threatMetrixFingerprintId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostOrdersRequestFingerprints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostOrdersRequestFingerprintsBuilder();
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

