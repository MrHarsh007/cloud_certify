//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/certification_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_update.g.dart';

/// UserUpdate
///
/// Properties:
/// * [firstName]
/// * [lastName]
/// * [certificationTarget]
/// * [bio]
/// * [photoUrl]
@BuiltValue()
abstract class UserUpdate implements Built<UserUpdate, UserUpdateBuilder> {
  @BuiltValueField(wireName: r'first_name')
  String? get firstName;

  @BuiltValueField(wireName: r'last_name')
  String? get lastName;

  @BuiltValueField(wireName: r'certification_target')
  CertificationType? get certificationTarget;
  // enum certificationTargetEnum {  Google Cloud Certified - Cloud Engineer,  Google Cloud Certified - Professional Cloud Architect,  Google Cloud Certified - Professional Data Engineer,  Google Cloud Certified - Professional Cloud Developer,  Google Cloud Certified - Professional Network Engineer,  Google Cloud Certified - Professional Security Engineer,  Google Cloud Certified - Professional ML Engineer,  Google Cloud Certified - Professional DevOps Engineer,  Other,  };

  @BuiltValueField(wireName: r'bio')
  String? get bio;

  @BuiltValueField(wireName: r'photo_url')
  String? get photoUrl;

  UserUpdate._();

  factory UserUpdate([void updates(UserUpdateBuilder b)]) = _$UserUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserUpdate> get serializer => _$UserUpdateSerializer();
}

class _$UserUpdateSerializer implements PrimitiveSerializer<UserUpdate> {
  @override
  final Iterable<Type> types = const [UserUpdate, _$UserUpdate];

  @override
  final String wireName = r'UserUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'first_name';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'last_name';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.certificationTarget != null) {
      yield r'certification_target';
      yield serializers.serialize(
        object.certificationTarget,
        specifiedType: const FullType(CertificationType),
      );
    }
    if (object.bio != null) {
      yield r'bio';
      yield serializers.serialize(
        object.bio,
        specifiedType: const FullType(String),
      );
    }
    if (object.photoUrl != null) {
      yield r'photo_url';
      yield serializers.serialize(
        object.photoUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'certification_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CertificationType),
          ) as CertificationType;
          result.certificationTarget = valueDes;
          break;
        case r'bio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bio = valueDes;
          break;
        case r'photo_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photoUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserUpdateBuilder();
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
