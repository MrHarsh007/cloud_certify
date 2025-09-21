//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:cloud_certify_service_api/src/date_serializer.dart';
import 'package:cloud_certify_service_api/src/model/date.dart';

import 'package:cloud_certify_service_api/src/model/ai_model.dart';
import 'package:cloud_certify_service_api/src/model/activity.dart';
import 'package:cloud_certify_service_api/src/model/activity_list.dart';
import 'package:cloud_certify_service_api/src/model/add_activity_request.dart';
import 'package:cloud_certify_service_api/src/model/answer_submission.dart';
import 'package:cloud_certify_service_api/src/model/assessment_type.dart';
import 'package:cloud_certify_service_api/src/model/attempted_question.dart';
import 'package:cloud_certify_service_api/src/model/attempted_question_detail.dart';
import 'package:cloud_certify_service_api/src/model/certification_type.dart';
import 'package:cloud_certify_service_api/src/model/chat_request.dart';
import 'package:cloud_certify_service_api/src/model/chat_response.dart';
import 'package:cloud_certify_service_api/src/model/chat_session.dart';
import 'package:cloud_certify_service_api/src/model/check_user_exists_request.dart';
import 'package:cloud_certify_service_api/src/model/daily_question.dart';
import 'package:cloud_certify_service_api/src/model/daily_question_with_attempt.dart';
import 'package:cloud_certify_service_api/src/model/daily_streak.dart';
import 'package:cloud_certify_service_api/src/model/http_validation_error.dart';
import 'package:cloud_certify_service_api/src/model/image_upload_response.dart';
import 'package:cloud_certify_service_api/src/model/leaderboard_response.dart';
import 'package:cloud_certify_service_api/src/model/like_response.dart';
import 'package:cloud_certify_service_api/src/model/location_inner.dart';
import 'package:cloud_certify_service_api/src/model/message.dart';
import 'package:cloud_certify_service_api/src/model/paginated_test_attempt_response.dart';
import 'package:cloud_certify_service_api/src/model/password_update_request.dart';
import 'package:cloud_certify_service_api/src/model/recommendation_type.dart';
import 'package:cloud_certify_service_api/src/model/resource.dart';
import 'package:cloud_certify_service_api/src/model/resource_list.dart';
import 'package:cloud_certify_service_api/src/model/resource_statistics.dart';
import 'package:cloud_certify_service_api/src/model/resource_type.dart';
import 'package:cloud_certify_service_api/src/model/resource_update.dart';
import 'package:cloud_certify_service_api/src/model/session_history_response.dart';
import 'package:cloud_certify_service_api/src/model/start_test_request.dart';
import 'package:cloud_certify_service_api/src/model/str_response.dart';
import 'package:cloud_certify_service_api/src/model/submit_answer_request.dart';
import 'package:cloud_certify_service_api/src/model/submit_answer_response.dart';
import 'package:cloud_certify_service_api/src/model/subscription_tier.dart';
import 'package:cloud_certify_service_api/src/model/test_attempt.dart';
import 'package:cloud_certify_service_api/src/model/test_attempt_history.dart';
import 'package:cloud_certify_service_api/src/model/test_attempt_history_list.dart';
import 'package:cloud_certify_service_api/src/model/test_attempt_summary.dart';
import 'package:cloud_certify_service_api/src/model/test_mode.dart';
import 'package:cloud_certify_service_api/src/model/test_question_without_answer.dart';
import 'package:cloud_certify_service_api/src/model/test_recommendation.dart';
import 'package:cloud_certify_service_api/src/model/test_recommendation_list.dart';
import 'package:cloud_certify_service_api/src/model/test_summary.dart';
import 'package:cloud_certify_service_api/src/model/test_summary_list.dart';
import 'package:cloud_certify_service_api/src/model/test_with_questions.dart';
import 'package:cloud_certify_service_api/src/model/unattempted_question.dart';
import 'package:cloud_certify_service_api/src/model/user_activity.dart';
import 'package:cloud_certify_service_api/src/model/user_attempt.dart';
import 'package:cloud_certify_service_api/src/model/user_create.dart';
import 'package:cloud_certify_service_api/src/model/user_exists_response.dart';
import 'package:cloud_certify_service_api/src/model/user_leaderboard_entry.dart';
import 'package:cloud_certify_service_api/src/model/user_preferences.dart';
import 'package:cloud_certify_service_api/src/model/user_ranking.dart';
import 'package:cloud_certify_service_api/src/model/user_response.dart';
import 'package:cloud_certify_service_api/src/model/user_sessions_response.dart';
import 'package:cloud_certify_service_api/src/model/user_statistics.dart';
import 'package:cloud_certify_service_api/src/model/user_subscription.dart';
import 'package:cloud_certify_service_api/src/model/user_update.dart';
import 'package:cloud_certify_service_api/src/model/validation_error.dart';
import 'package:cloud_certify_service_api/src/model/view_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  AIModel,
  Activity,
  ActivityList,
  AddActivityRequest,
  AnswerSubmission,
  AssessmentType,
  AttemptedQuestion,
  AttemptedQuestionDetail,
  CertificationType,
  ChatRequest,
  ChatResponse,
  ChatSession,
  CheckUserExistsRequest,
  DailyQuestion,
  DailyQuestionWithAttempt,
  DailyStreak,
  HTTPValidationError,
  ImageUploadResponse,
  LeaderboardResponse,
  LikeResponse,
  LocationInner,
  Message,
  PaginatedTestAttemptResponse,
  PasswordUpdateRequest,
  RecommendationType,
  Resource,
  ResourceList,
  ResourceStatistics,
  ResourceType,
  ResourceUpdate,
  SessionHistoryResponse,
  StartTestRequest,
  StrResponse,
  SubmitAnswerRequest,
  SubmitAnswerResponse,
  SubscriptionTier,
  TestAttempt,
  TestAttemptHistory,
  TestAttemptHistoryList,
  TestAttemptSummary,
  TestMode,
  TestQuestionWithoutAnswer,
  TestRecommendation,
  TestRecommendationList,
  TestSummary,
  TestSummaryList,
  TestWithQuestions,
  UnattemptedQuestion,
  UserActivity,
  UserAttempt,
  UserCreate,
  UserExistsResponse,
  UserLeaderboardEntry,
  UserPreferences,
  UserRanking,
  UserResponse,
  UserSessionsResponse,
  UserStatistics,
  UserSubscription,
  UserUpdate,
  ValidationError,
  ViewResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
