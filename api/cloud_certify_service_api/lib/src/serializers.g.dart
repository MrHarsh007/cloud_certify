// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AIModel.serializer)
      ..add(Activity.serializer)
      ..add(ActivityList.serializer)
      ..add(AddActivityRequest.serializer)
      ..add(AnswerSubmission.serializer)
      ..add(AssessmentType.serializer)
      ..add(AttemptedQuestion.serializer)
      ..add(AttemptedQuestionDetail.serializer)
      ..add(CertificationType.serializer)
      ..add(ChatRequest.serializer)
      ..add(ChatResponse.serializer)
      ..add(ChatSession.serializer)
      ..add(CheckUserExistsRequest.serializer)
      ..add(DailyQuestion.serializer)
      ..add(DailyQuestionWithAttempt.serializer)
      ..add(DailyStreak.serializer)
      ..add(HTTPValidationError.serializer)
      ..add(ImageUploadResponse.serializer)
      ..add(LeaderboardResponse.serializer)
      ..add(LikeResponse.serializer)
      ..add(LocationInner.serializer)
      ..add(Message.serializer)
      ..add(PaginatedTestAttemptResponse.serializer)
      ..add(PasswordUpdateRequest.serializer)
      ..add(RecommendationType.serializer)
      ..add(Resource.serializer)
      ..add(ResourceList.serializer)
      ..add(ResourceStatistics.serializer)
      ..add(ResourceType.serializer)
      ..add(ResourceUpdate.serializer)
      ..add(SessionHistoryResponse.serializer)
      ..add(StartTestRequest.serializer)
      ..add(StrResponse.serializer)
      ..add(SubmitAnswerRequest.serializer)
      ..add(SubmitAnswerResponse.serializer)
      ..add(SubscriptionTier.serializer)
      ..add(TestAttempt.serializer)
      ..add(TestAttemptHistory.serializer)
      ..add(TestAttemptHistoryList.serializer)
      ..add(TestAttemptSummary.serializer)
      ..add(TestMode.serializer)
      ..add(TestQuestionWithoutAnswer.serializer)
      ..add(TestRecommendation.serializer)
      ..add(TestRecommendationList.serializer)
      ..add(TestSummary.serializer)
      ..add(TestSummaryList.serializer)
      ..add(TestWithQuestions.serializer)
      ..add(UnattemptedQuestion.serializer)
      ..add(UserActivity.serializer)
      ..add(UserAttempt.serializer)
      ..add(UserCreate.serializer)
      ..add(UserExistsResponse.serializer)
      ..add(UserLeaderboardEntry.serializer)
      ..add(UserPreferences.serializer)
      ..add(UserRanking.serializer)
      ..add(UserResponse.serializer)
      ..add(UserSessionsResponse.serializer)
      ..add(UserStatistics.serializer)
      ..add(UserSubscription.serializer)
      ..add(UserUpdate.serializer)
      ..add(ValidationError.serializer)
      ..add(ViewResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Activity)]),
          () => new ListBuilder<Activity>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AttemptedQuestion)]),
          () => new ListBuilder<AttemptedQuestion>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AttemptedQuestionDetail)]),
          () => new ListBuilder<AttemptedQuestionDetail>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UnattemptedQuestion)]),
          () => new ListBuilder<UnattemptedQuestion>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatSession)]),
          () => new ListBuilder<ChatSession>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => new ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => new ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LocationInner)]),
          () => new ListBuilder<LocationInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Message)]),
          () => new ListBuilder<Message>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Message)]),
          () => new ListBuilder<Message>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Resource)]),
          () => new ListBuilder<Resource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TestAttemptHistory)]),
          () => new ListBuilder<TestAttemptHistory>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TestAttemptSummary)]),
          () => new ListBuilder<TestAttemptSummary>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TestQuestionWithoutAnswer)]),
          () => new ListBuilder<TestQuestionWithoutAnswer>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TestRecommendation)]),
          () => new ListBuilder<TestRecommendation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TestSummary)]),
          () => new ListBuilder<TestSummary>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UserLeaderboardEntry)]),
          () => new ListBuilder<UserLeaderboardEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ValidationError)]),
          () => new ListBuilder<ValidationError>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
