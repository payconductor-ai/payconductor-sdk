//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pix_expiration_in_seconds.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pix.g.dart';

/// Pix
///
/// Properties:
/// * [paymentMethod] 
/// * [expirationInSeconds] 
@BuiltValue()
abstract class Pix implements Built<Pix, PixBuilder> {
  @BuiltValueField(wireName: r'paymentMethod')
  String get paymentMethod;

  @BuiltValueField(wireName: r'expirationInSeconds')
  PixExpirationInSeconds? get expirationInSeconds;

  Pix._();

  factory Pix([void updates(PixBuilder b)]) = _$Pix;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PixBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Pix> get serializer => _$PixSerializer();
}

class _$PixSerializer implements PrimitiveSerializer<Pix> {
  @override
  final Iterable<Type> types = const [Pix, _$Pix];

  @override
  final String wireName = r'Pix';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Pix object, {
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
        specifiedType: const FullType(PixExpirationInSeconds),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Pix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PixBuilder result,
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
            specifiedType: const FullType(PixExpirationInSeconds),
          ) as PixExpirationInSeconds;
          result.expirationInSeconds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Pix deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PixBuilder();
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

