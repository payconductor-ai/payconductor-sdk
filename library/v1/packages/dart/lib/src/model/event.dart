//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event.g.dart';

class Event extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OrderCreated')
  static const Event OrderCreated = _$OrderCreated;
  @BuiltValueEnumConst(wireName: r'OrderPending')
  static const Event OrderPending = _$OrderPending;
  @BuiltValueEnumConst(wireName: r'OrderCompleted')
  static const Event OrderCompleted = _$OrderCompleted;
  @BuiltValueEnumConst(wireName: r'OrderFailed')
  static const Event OrderFailed = _$OrderFailed;
  @BuiltValueEnumConst(wireName: r'OrderRefunded')
  static const Event OrderRefunded = _$OrderRefunded;
  @BuiltValueEnumConst(wireName: r'OrderChargeback')
  static const Event OrderChargeback = _$OrderChargeback;
  @BuiltValueEnumConst(wireName: r'WithdrawCreated')
  static const Event WithdrawCreated = _$WithdrawCreated;
  @BuiltValueEnumConst(wireName: r'WithdrawCompleted')
  static const Event WithdrawCompleted = _$WithdrawCompleted;
  @BuiltValueEnumConst(wireName: r'WithdrawFailed')
  static const Event WithdrawFailed = _$WithdrawFailed;
  @BuiltValueEnumConst(wireName: r'WithdrawTransferring')
  static const Event WithdrawTransferring = _$WithdrawTransferring;

  static Serializer<Event> get serializer => _$eventSerializer;

  const Event._(String name): super(name);

  static BuiltSet<Event> get values => _$values;
  static Event valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EventMixin = Object with _$EventMixin;

