//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'certification_type.g.dart';

class CertificationType extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'Google Cloud Certified - Cloud Engineer')
  static const CertificationType googleCloudCertifiedCloudEngineer =
      _$googleCloudCertifiedCloudEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional Cloud Architect')
  static const CertificationType
      googleCloudCertifiedProfessionalCloudArchitect =
      _$googleCloudCertifiedProfessionalCloudArchitect;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional Data Engineer')
  static const CertificationType googleCloudCertifiedProfessionalDataEngineer =
      _$googleCloudCertifiedProfessionalDataEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional Cloud Developer')
  static const CertificationType
      googleCloudCertifiedProfessionalCloudDeveloper =
      _$googleCloudCertifiedProfessionalCloudDeveloper;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional Network Engineer')
  static const CertificationType
      googleCloudCertifiedProfessionalNetworkEngineer =
      _$googleCloudCertifiedProfessionalNetworkEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional Security Engineer')
  static const CertificationType
      googleCloudCertifiedProfessionalSecurityEngineer =
      _$googleCloudCertifiedProfessionalSecurityEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional ML Engineer')
  static const CertificationType googleCloudCertifiedProfessionalMLEngineer =
      _$googleCloudCertifiedProfessionalMLEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(
      wireName: r'Google Cloud Certified - Professional DevOps Engineer')
  static const CertificationType
      googleCloudCertifiedProfessionalDevOpsEngineer =
      _$googleCloudCertifiedProfessionalDevOpsEngineer;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'Other', fallback: true)
  static const CertificationType other = _$other;

  static Serializer<CertificationType> get serializer =>
      _$certificationTypeSerializer;

  const CertificationType._(String name) : super(name);

  static BuiltSet<CertificationType> get values => _$values;
  static CertificationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CertificationTypeMixin = Object with _$CertificationTypeMixin;
