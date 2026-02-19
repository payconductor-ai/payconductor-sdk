//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_withdraws_request_payout_account.g.dart';

/// PostWithdrawsRequestPayoutAccount
///
/// Properties:
/// * [ownerDocument] - Account holder document (CPF or CNPJ)
/// * [ownerName] - Account holder name
/// * [pixKey] - PIX key for withdrawal
/// * [pixType] - PIX key type
@BuiltValue()
abstract class PostWithdrawsRequestPayoutAccount implements Built<PostWithdrawsRequestPayoutAccount, PostWithdrawsRequestPayoutAccountBuilder> {
  /// Account holder document (CPF or CNPJ)
  @BuiltValueField(wireName: r'ownerDocument')
  String get ownerDocument;

  /// Account holder name
  @BuiltValueField(wireName: r'ownerName')
  String get ownerName;

  /// PIX key for withdrawal
  @BuiltValueField(wireName: r'pixKey')
  String get pixKey;

  /// PIX key type
  @BuiltValueField(wireName: r'pixType')
  PostWithdrawsRequestPayoutAccountPixTypeEnum get pixType;
  // enum pixTypeEnum {  Cnpj,  Cpf,  Email,  Phone,  Random,  };

  PostWithdrawsRequestPayoutAccount._();

  factory PostWithdrawsRequestPayoutAccount([void updates(PostWithdrawsRequestPayoutAccountBuilder b)]) = _$PostWithdrawsRequestPayoutAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostWithdrawsRequestPayoutAccountBuilder b) => b
      ..pixType = PostWithdrawsRequestPayoutAccountPixTypeEnum.valueOf('Cnpj');

  @BuiltValueSerializer(custom: true)
  static Serializer<PostWithdrawsRequestPayoutAccount> get serializer => _$PostWithdrawsRequestPayoutAccountSerializer();
}

class _$PostWithdrawsRequestPayoutAccountSerializer implements PrimitiveSerializer<PostWithdrawsRequestPayoutAccount> {
  @override
  final Iterable<Type> types = const [PostWithdrawsRequestPayoutAccount, _$PostWithdrawsRequestPayoutAccount];

  @override
  final String wireName = r'PostWithdrawsRequestPayoutAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostWithdrawsRequestPayoutAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType: const FullType(PostWithdrawsRequestPayoutAccountPixTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostWithdrawsRequestPayoutAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostWithdrawsRequestPayoutAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(PostWithdrawsRequestPayoutAccountPixTypeEnum),
          ) as PostWithdrawsRequestPayoutAccountPixTypeEnum;
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
  PostWithdrawsRequestPayoutAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostWithdrawsRequestPayoutAccountBuilder();
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

class PostWithdrawsRequestPayoutAccountPixTypeEnum extends EnumClass {

  /// PIX key type
  @BuiltValueEnumConst(wireName: r'Cnpj')
  static const PostWithdrawsRequestPayoutAccountPixTypeEnum cnpj = _$postWithdrawsRequestPayoutAccountPixTypeEnum_cnpj;
  /// PIX key type
  @BuiltValueEnumConst(wireName: r'Cpf')
  static const PostWithdrawsRequestPayoutAccountPixTypeEnum cpf = _$postWithdrawsRequestPayoutAccountPixTypeEnum_cpf;
  /// PIX key type
  @BuiltValueEnumConst(wireName: r'Email')
  static const PostWithdrawsRequestPayoutAccountPixTypeEnum email = _$postWithdrawsRequestPayoutAccountPixTypeEnum_email;
  /// PIX key type
  @BuiltValueEnumConst(wireName: r'Phone')
  static const PostWithdrawsRequestPayoutAccountPixTypeEnum phone = _$postWithdrawsRequestPayoutAccountPixTypeEnum_phone;
  /// PIX key type
  @BuiltValueEnumConst(wireName: r'Random')
  static const PostWithdrawsRequestPayoutAccountPixTypeEnum random = _$postWithdrawsRequestPayoutAccountPixTypeEnum_random;

  static Serializer<PostWithdrawsRequestPayoutAccountPixTypeEnum> get serializer => _$postWithdrawsRequestPayoutAccountPixTypeEnumSerializer;

  const PostWithdrawsRequestPayoutAccountPixTypeEnum._(String name): super(name);

  static BuiltSet<PostWithdrawsRequestPayoutAccountPixTypeEnum> get values => _$postWithdrawsRequestPayoutAccountPixTypeEnumValues;
  static PostWithdrawsRequestPayoutAccountPixTypeEnum valueOf(String name) => _$postWithdrawsRequestPayoutAccountPixTypeEnumValueOf(name);
}

