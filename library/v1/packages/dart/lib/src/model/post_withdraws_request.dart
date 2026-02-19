//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/merchant_input.dart';
import 'package:openapi/src/model/post_withdraws_request_payout_account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_withdraws_request.g.dart';

/// PostWithdrawsRequest
///
/// Properties:
/// * [amount] - Withdrawal amount in cents
/// * [externalId] - Withdrawal ID in your system
/// * [merchant] 
/// * [payoutAccount] 
@BuiltValue()
abstract class PostWithdrawsRequest implements Built<PostWithdrawsRequest, PostWithdrawsRequestBuilder> {
  /// Withdrawal amount in cents
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Withdrawal ID in your system
  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'merchant')
  MerchantInput? get merchant;

  @BuiltValueField(wireName: r'payoutAccount')
  PostWithdrawsRequestPayoutAccount get payoutAccount;

  PostWithdrawsRequest._();

  factory PostWithdrawsRequest([void updates(PostWithdrawsRequestBuilder b)]) = _$PostWithdrawsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PostWithdrawsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PostWithdrawsRequest> get serializer => _$PostWithdrawsRequestSerializer();
}

class _$PostWithdrawsRequestSerializer implements PrimitiveSerializer<PostWithdrawsRequest> {
  @override
  final Iterable<Type> types = const [PostWithdrawsRequest, _$PostWithdrawsRequest];

  @override
  final String wireName = r'PostWithdrawsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PostWithdrawsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.merchant != null) {
      yield r'merchant';
      yield serializers.serialize(
        object.merchant,
        specifiedType: const FullType(MerchantInput),
      );
    }
    yield r'payoutAccount';
    yield serializers.serialize(
      object.payoutAccount,
      specifiedType: const FullType(PostWithdrawsRequestPayoutAccount),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PostWithdrawsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PostWithdrawsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'merchant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MerchantInput),
          ) as MerchantInput;
          result.merchant.replace(valueDes);
          break;
        case r'payoutAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PostWithdrawsRequestPayoutAccount),
          ) as PostWithdrawsRequestPayoutAccount;
          result.payoutAccount.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PostWithdrawsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostWithdrawsRequestBuilder();
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

