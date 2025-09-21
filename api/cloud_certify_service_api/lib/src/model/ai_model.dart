//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_model.g.dart';

class AIModel extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'deepseek-ai/DeepSeek-V3-0324')
  static const AIModel deepseekAiSlashDeepSeekV30324 =
      _$deepseekAiSlashDeepSeekV30324;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'deepseek-r1')
  static const AIModel deepseekR1 = _$deepseekR1;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'gpt-4o')
  static const AIModel gpt4o = _$gpt4o;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'chatgpt-4o-latest')
  static const AIModel chatgpt4oLatest = _$chatgpt4oLatest;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'gemini-1.5-pro', fallback: true)
  static const AIModel gemini1Period5Pro = _$gemini1Period5Pro;

  static Serializer<AIModel> get serializer => _$aIModelSerializer;

  const AIModel._(String name) : super(name);

  static BuiltSet<AIModel> get values => _$values;
  static AIModel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AIModelMixin = Object with _$AIModelMixin;
