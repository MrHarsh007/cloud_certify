import 'package:test/test.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';

/// tests for DefaultApi
void main() {
  final instance = CloudCertifyServiceApi().getDefaultApi();

  group(DefaultApi, () {
    // Add a new activity
    //
    //Future<Activity> addNewActivityBUserActivityActivitiesPost(AddActivityRequest addActivityRequest) async
    test('test addNewActivityBUserActivityActivitiesPost', () async {
      // TODO
    });

    // Process a chat request
    //
    //Future<ChatResponse> chatEndpointBChatAiChatPost(ChatRequest chatRequest) async
    test('test chatEndpointBChatAiChatPost', () async {
      // TODO
    });

    // Check if a user exists
    //
    // Check if a user with the given email exists in the system.  This endpoint doesn't require authentication and can be used for pre-registration checks or password recovery flows.  Returns:     - exists: Boolean indicating if the user exists     - user_id: The Firebase UID if the user exists, otherwise null
    //
    //Future<UserExistsResponse> checkIfUserExistsBManageUserUsersCheckExistsPost(CheckUserExistsRequest checkUserExistsRequest) async
    test('test checkIfUserExistsBManageUserUsersCheckExistsPost', () async {
      // TODO
    });

    // Create a new user
    //
    //Future<UserResponse> createNewUserBManageUserUsersPost(UserCreate userCreate) async
    test('test createNewUserBManageUserUsersPost', () async {
      // TODO
    });

    // Delete a resource
    //
    //Future deleteResourceEndpointBResourcesResourcesResourceIdDelete(String resourceId) async
    test('test deleteResourceEndpointBResourcesResourcesResourceIdDelete',
        () async {
      // TODO
    });

    // Delete a chat session
    //
    //Future<JsonObject> deleteSessionEndpointBChatAiSessionSessionIdDelete(String sessionId) async
    test('test deleteSessionEndpointBChatAiSessionSessionIdDelete', () async {
      // TODO
    });

    // Delete user
    //
    //Future<StrResponse> deleteUserAccountBManageUserUsersDelete() async
    test('test deleteUserAccountBManageUserUsersDelete', () async {
      // TODO
    });

    // Get question of the day with user attempt status
    //
    //Future<DailyQuestionWithAttempt> fetchDailyQuestionBUserActivityDailyQuestionGet({ String date }) async
    test('test fetchDailyQuestionBUserActivityDailyQuestionGet', () async {
      // TODO
    });

    // Finish a test attempt
    //
    //Future<TestAttemptSummary> finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost(String attemptId) async
    test('test finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost',
        () async {
      // TODO
    });

    // Get all tests with filter, search and sort
    //
    //Future<TestSummaryList> getAllTestsRouteBTestLibraryTestsGet({ String category, String cloudProvider, String difficulty, String status, String search, String sortBy, String sortOrder }) async
    test('test getAllTestsRouteBTestLibraryTestsGet', () async {
      // TODO
    });

    // Get current user details
    //
    //Future<UserResponse> getCurrentUserDetailsBManageUserUsersMeGet() async
    test('test getCurrentUserDetailsBManageUserUsersMeGet', () async {
      // TODO
    });

    // Get test recommendations
    //
    //Future<TestRecommendationList> getRecommendationsBRecommendationRecommendationsGet({ RecommendationType recommendationType, int limit }) async
    test('test getRecommendationsBRecommendationRecommendationsGet', () async {
      // TODO
    });

    // Get chat session history
    //
    //Future<SessionHistoryResponse> getSessionHistoryEndpointBChatAiSessionSessionIdGet(String sessionId) async
    test('test getSessionHistoryEndpointBChatAiSessionSessionIdGet', () async {
      // TODO
    });

    // Get user's current streak
    //
    //Future<DailyStreak> getStreakBUserActivityDailyStreakGet() async
    test('test getStreakBUserActivityDailyStreakGet', () async {
      // TODO
    });

    // Get test attempt history
    //
    //Future<TestAttemptHistory> getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet(String attemptId) async
    test(
        'test getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet',
        () async {
      // TODO
    });

    // Get test attempt details
    //
    //Future<TestAttempt> getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet(String attemptId) async
    test('test getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet', () async {
      // TODO
    });

    // Get test with questions
    //
    //Future<TestWithQuestions> getTestWithQuestionsRouteBTestLibraryTestsTestIdGet(String testId) async
    test('test getTestWithQuestionsRouteBTestLibraryTestsTestIdGet', () async {
      // TODO
    });

    // Get user activities
    //
    //Future<ActivityList> getUserActivitiesBUserActivityActivitiesGet() async
    test('test getUserActivitiesBUserActivityActivitiesGet', () async {
      // TODO
    });

    // Get user's chat sessions
    //
    //Future<UserSessionsResponse> getUserSessionsEndpointBChatAiSessionsGet() async
    test('test getUserSessionsEndpointBChatAiSessionsGet', () async {
      // TODO
    });

    // Get user test attempts
    //
    //Future<BuiltList<TestAttemptSummary>> getUserTestAttemptsRouteBTestLibraryAttemptsGet({ String testId, String status, TestMode mode }) async
    test('test getUserTestAttemptsRouteBTestLibraryAttemptsGet', () async {
      // TODO
    });

    // Get user test history
    //
    //Future<TestAttemptHistoryList> getUserTestHistoryRouteBTestLibraryUsersHistoryGet({ int limit }) async
    test('test getUserTestHistoryRouteBTestLibraryUsersHistoryGet', () async {
      // TODO
    });

    // Increment view count of a resource
    //
    //Future<ViewResponse> incrementViewResourceBResourcesResourcesResourceIdIncrementViewPost(String resourceId) async
    test(
        'test incrementViewResourceBResourcesResourcesResourceIdIncrementViewPost',
        () async {
      // TODO
    });

    // Get leaderboard and user ranking
    //
    //Future<LeaderboardResponse> leaderboardBLeaderboardLeaderboardGet({ int limit }) async
    test('test leaderboardBLeaderboardLeaderboardGet', () async {
      // TODO
    });

    // List resources
    //
    //Future<ResourceList> listResourcesEndpointBResourcesResourcesGet({ String certification, String resourceType, String tag, String sortBy, String sortOrder, int limit, String cursor }) async
    test('test listResourcesEndpointBResourcesResourcesGet', () async {
      // TODO
    });

    // Get resource details
    //
    //Future<Resource> readResourceBResourcesResourcesResourceIdGet(String resourceId) async
    test('test readResourceBResourcesResourcesResourceIdGet', () async {
      // TODO
    });

    // Start a test
    //
    //Future<TestAttemptSummary> startTestRouteBTestLibraryTestsTestIdStartPost(String testId, StartTestRequest startTestRequest) async
    test('test startTestRouteBTestLibraryTestsTestIdStartPost', () async {
      // TODO
    });

    // Submit an answer
    //
    //Future<SubmitAnswerResponse> submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost(String attemptId, SubmitAnswerRequest submitAnswerRequest) async
    test('test submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost',
        () async {
      // TODO
    });

    // Submit answer for daily question
    //
    //Future<DailyStreak> submitDailyAnswerBUserActivityDailyQuestionSubmitPost(AnswerSubmission answerSubmission) async
    test('test submitDailyAnswerBUserActivityDailyQuestionSubmitPost',
        () async {
      // TODO
    });

    // Toggle like on a resource
    //
    //Future<LikeResponse> toggleLikeResourceBResourcesResourcesResourceIdToggleLikePost(String resourceId) async
    test('test toggleLikeResourceBResourcesResourcesResourceIdToggleLikePost',
        () async {
      // TODO
    });

    // Update resource details
    //
    //Future<Resource> updateResourceEndpointBResourcesResourcesResourceIdPut(String resourceId, ResourceUpdate resourceUpdate) async
    test('test updateResourceEndpointBResourcesResourcesResourceIdPut',
        () async {
      // TODO
    });

    // Update user details
    //
    //Future<UserResponse> updateUserDetailsBManageUserUsersPut(UserUpdate userUpdate) async
    test('test updateUserDetailsBManageUserUsersPut', () async {
      // TODO
    });

    // Upload a new resource
    //
    //Future<Resource> uploadResourceBResourcesResourcesPost(String title, String description, ResourceType resourceType, { String link, String certification, String thumbnail, BuiltList<String> tags, MultipartFile file }) async
    test('test uploadResourceBResourcesResourcesPost', () async {
      // TODO
    });

    // Get user statistics
    //
    //Future<UserStatistics> userStatisticsBUserStatisticsUserStatisticsGet() async
    test('test userStatisticsBUserStatisticsUserStatisticsGet', () async {
      // TODO
    });
  });
}
