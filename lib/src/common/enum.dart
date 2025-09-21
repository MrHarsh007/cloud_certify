import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';

enum LocationNavigate { isPickup, isDrop, fromSaved, fromcourier }

enum RequestState {
  empty,
  loading,
  error,
  updating,
  loaded;

  bool get isEmpty => this == RequestState.empty;
  bool get isLoading => this == RequestState.loading;
  bool get isLoaded => this == RequestState.loaded;
  bool get isUpdating => this == RequestState.updating;
  bool get isError => this == RequestState.error;
}

enum LocationState { init, unpermission, permission, success, error, loading }

enum OnboardingType { signIn, signUp, forgotPassword }

enum TestStatusEnum { completed, inProgress }

enum UserState {
  initial,
  loading,
  onboarding,
  authenticated,
  unauthenticated,
  kycNotCompleted, // if user does not complete kyc
  completeProfile, // if user does not have middleName, lastName, phoneNumber
  error,
  accountDeleted,
}

extension CertificationTypeExtension on CertificationType {
  String get wireName {
    switch (this) {
      case CertificationType.googleCloudCertifiedCloudEngineer:
        return 'Google Cloud Certified - Cloud Engineer';
      case CertificationType.googleCloudCertifiedProfessionalCloudArchitect:
        return 'Google Cloud Certified - Professional Cloud Architect';
      case CertificationType.googleCloudCertifiedProfessionalDataEngineer:
        return 'Google Cloud Certified - Professional Data Engineer';
      case CertificationType.googleCloudCertifiedProfessionalCloudDeveloper:
        return 'Google Cloud Certified - Professional Cloud Developer';
      case CertificationType.googleCloudCertifiedProfessionalNetworkEngineer:
        return 'Google Cloud Certified - Professional Network Engineer';
      case CertificationType.googleCloudCertifiedProfessionalSecurityEngineer:
        return 'Google Cloud Certified - Professional Security Engineer';
      case CertificationType.googleCloudCertifiedProfessionalMLEngineer:
        return 'Google Cloud Certified - Professional ML Engineer';
      case CertificationType.googleCloudCertifiedProfessionalDevOpsEngineer:
        return 'Google Cloud Certified - Professional DevOps Engineer';
      case CertificationType.other:
        return 'Other';
      default:
        throw Exception('Unknown CertificationType: $this');
    }
  }
}

extension CertificationTypeFromString on String {
  CertificationType toCertificationType() {
    switch (this) {
      case 'Google Cloud Certified - Cloud Engineer':
        return CertificationType.googleCloudCertifiedCloudEngineer;
      case 'Google Cloud Certified - Professional Cloud Architect':
        return CertificationType.googleCloudCertifiedProfessionalCloudArchitect;
      case 'Google Cloud Certified - Professional Data Engineer':
        return CertificationType.googleCloudCertifiedProfessionalDataEngineer;
      case 'Google Cloud Certified - Professional Cloud Developer':
        return CertificationType.googleCloudCertifiedProfessionalCloudDeveloper;
      case 'Google Cloud Certified - Professional Network Engineer':
        return CertificationType
            .googleCloudCertifiedProfessionalNetworkEngineer;
      case 'Google Cloud Certified - Professional Security Engineer':
        return CertificationType
            .googleCloudCertifiedProfessionalSecurityEngineer;
      case 'Google Cloud Certified - Professional ML Engineer':
        return CertificationType.googleCloudCertifiedProfessionalMLEngineer;
      case 'Google Cloud Certified - Professional DevOps Engineer':
        return CertificationType.googleCloudCertifiedProfessionalDevOpsEngineer;
      case 'Other':
        return CertificationType.other;
      default:
        throw Exception('Unknown CertificationType string: $this');
    }
  }
}

enum AuthFlow {
  initial,
  loading,
  error,
  loaded,
  createAccount,
  signIn,
  userExist,
  userNotExist,
}

enum KycState {
  initial,
  loading,
  loaded,
  error,
  callBackendApi,
}

enum UserStatus { pending, requested, matched, unmatch }
