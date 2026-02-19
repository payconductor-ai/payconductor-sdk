//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pix_type.g.dart';

class PixType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Cpf')
  static const PixType Cpf = _$Cpf;
  @BuiltValueEnumConst(wireName: r'Cnpj')
  static const PixType Cnpj = _$Cnpj;
  @BuiltValueEnumConst(wireName: r'Email')
  static const PixType Email = _$Email;
  @BuiltValueEnumConst(wireName: r'Phone')
  static const PixType Phone = _$Phone;
  @BuiltValueEnumConst(wireName: r'Random')
  static const PixType Random = _$Random;

  static Serializer<PixType> get serializer => _$pixTypeSerializer;

  const PixType._(String name): super(name);

  static BuiltSet<PixType> get values => _$values;
  static PixType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PixTypeMixin = Object with _$PixTypeMixin;

