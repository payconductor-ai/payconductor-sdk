//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/pix_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_withdraws200_response_payout_account.g.dart';

/// PostWithdraws200ResponsePayoutAccount
///
/// Properties:
/// * [id] - Unique payment account identifier
/// * [ownerDocument] - Account holder document (CPF or CNPJ)
/// * [ownerName] - Account holder name
/// * [pixKey] - PIX key used for the withdrawal
/// * [pixType] 
@BuiltValue()
abstract class PostWithdraws200ResponsePayoutAccount implements Built<PostWithdraws200ResponsePayoutAccount, PostWithdraws200ResponsePayoutAccountBuilder> {
  /// Unique payment account identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Account holder document (CPF or CNPJ)
  @BuiltValueField(wireName: r'ownerDocument')
  String get ownerDocument;

  /// Account holder name
  @BuiltValueField(wireName: r'ownerName')
  String get ownerName;

  /// PIX key used for the withdrawal
  @BuiltValueField(wireName: r'pixKey')
  String get pixKey;

  @BuiltValueField(wireName: r'pixType')
  PixType get pixType;
  // enum pixTypeEnum {  Cpf,  Cnpj,  Email,  Phone,  Random,  };

  PostWithdraws200ResponsePayoutAccount._();

  factory PostWithdraws200ResponsePayoutAccount([void updates(PostWithdraws200ResponsePayoutAccountBuilder b)]) = _$PostWithdraws200ResponsePayoutAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostWithdraws200ResponsePayoutAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostWithdraws200ResponsePayoutAccount> get serializer => _$PostWithdraws200ResponsePayoutAccountSerializer();
}

class _$PostWithdraws200ResponsePayoutAccountSerializer implements PrimitiveSerializer<PostWithdraws200ResponsePayoutAccount> {
  @override
  final Iterable<Type> types = const [PostWithdraws200ResponsePayoutAccount, _$PostWithdraws200ResponsePayoutAccount];

  @override
  final String wireName = r'PostWithdraws200ResponsePayoutAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostWithdraws200ResponsePayoutAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ownerDocument';
    yield serializers.serialize(
      object.ownerDocument,
      specifiedType: const FullType(String),
    );
    yield r'ownerName';
    yield serializers.serialize(
      object.ownerName,
      specifiedType: const FullType(String),
    );
    yield r'pixKey';
    yield serializers.serialize(
      object.pixKey,
      specifiedType: const FullType(String),
    );
    yield r'pixType';
    yield serializers.serialize(
      object.pixType,
      specifiedType: const FullType(PixType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostWithdraws200ResponsePayoutAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostWithdraws200ResponsePayoutAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ownerDocument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerDocument = valueDes;
          break;
        case r'ownerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerName = valueDes;
          break;
        case r'pixKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pixKey = valueDes;
          break;
        case r'pixType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PixType),
          ) as PixType;
          result.pixType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostWithdraws200ResponsePayoutAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostWithdraws200ResponsePayoutAccountBuilder();
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

