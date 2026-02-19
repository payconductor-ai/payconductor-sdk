//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status.g.dart';

class Status extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Generating')
  static const Status Generating = _$Generating;
  @BuiltValueEnumConst(wireName: r'Pending')
  static const Status Pending = _$Pending;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const Status Completed = _$Completed;
  @BuiltValueEnumConst(wireName: r'Failed')
  static const Status Failed = _$Failed;
  @BuiltValueEnumConst(wireName: r'Canceled')
  static const Status Canceled = _$Canceled;
  @BuiltValueEnumConst(wireName: r'Refunding')
  static const Status Refunding = _$Refunding;
  @BuiltValueEnumConst(wireName: r'Refunded')
  static const Status Refunded = _$Refunded;
  @BuiltValueEnumConst(wireName: r'InDispute')
  static const Status InDispute = _$InDispute;
  @BuiltValueEnumConst(wireName: r'Chargeback')
  static const Status Chargeback = _$Chargeback;
  @BuiltValueEnumConst(wireName: r'Transferring')
  static const Status Transferring = _$Transferring;

  static Serializer<Status> get serializer => _$statusSerializer;

  const Status._(String name): super(name);

  static BuiltSet<Status> get values => _$values;
  static Status valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StatusMixin = Object with _$StatusMixin;

