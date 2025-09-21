# cloud_certify_service_api.api.DefaultApi

## Load the API package
```dart
import 'package:cloud_certify_service_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNewActivityBUserActivityActivitiesPost**](DefaultApi.md#addnewactivitybuseractivityactivitiespost) | **POST** /b/user_activity/activities | Add a new activity
[**chatEndpointBChatAiChatPost**](DefaultApi.md#chatendpointbchataichatpost) | **POST** /b/chat_ai/chat | Process a chat request
[**checkIfUserExistsBManageUserUsersCheckExistsPost**](DefaultApi.md#checkifuserexistsbmanageuseruserscheckexistspost) | **POST** /b/manage_user/users/check-exists | Check if a user exists
[**createNewUserBManageUserUsersPost**](DefaultApi.md#createnewuserbmanageuseruserspost) | **POST** /b/manage_user/users | Create a new user
[**deleteResourceEndpointBResourcesResourcesResourceIdDelete**](DefaultApi.md#deleteresourceendpointbresourcesresourcesresourceiddelete) | **DELETE** /b/resources/resources/{resource_id} | Delete a resource
[**deleteSessionEndpointBChatAiSessionSessionIdDelete**](DefaultApi.md#deletesessionendpointbchataisessionsessioniddelete) | **DELETE** /b/chat_ai/session/{session_id} | Delete a chat session
[**deleteUserAccountBManageUserUsersDelete**](DefaultApi.md#deleteuseraccountbmanageuserusersdelete) | **DELETE** /b/manage_user/users | Delete user
[**fetchDailyQuestionBUserActivityDailyQuestionGet**](DefaultApi.md#fetchdailyquestionbuseractivitydailyquestionget) | **GET** /b/user_activity/daily-question | Get question of the day with user attempt status
[**finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost**](DefaultApi.md#finishtestattemptroutebtestlibraryattemptsattemptidfinishpost) | **POST** /b/test_library/attempts/{attempt_id}/finish | Finish a test attempt
[**getAllTestsRouteBTestLibraryTestsGet**](DefaultApi.md#getalltestsroutebtestlibrarytestsget) | **GET** /b/test_library/tests | Get all tests with filter, search, sort, pagination
[**getCurrentUserDetailsBManageUserUsersMeGet**](DefaultApi.md#getcurrentuserdetailsbmanageuserusersmeget) | **GET** /b/manage_user/users/me | Get current user details
[**getRecommendationsBRecommendationRecommendationsGet**](DefaultApi.md#getrecommendationsbrecommendationrecommendationsget) | **GET** /b/recommendation/recommendations | Get test recommendations
[**getSessionHistoryEndpointBChatAiSessionSessionIdGet**](DefaultApi.md#getsessionhistoryendpointbchataisessionsessionidget) | **GET** /b/chat_ai/session/{session_id} | Get chat session history
[**getStreakBUserActivityDailyStreakGet**](DefaultApi.md#getstreakbuseractivitydailystreakget) | **GET** /b/user_activity/daily-streak | Get user&#39;s current streak
[**getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet**](DefaultApi.md#gettestattempthistoryroutebtestlibraryhistoryattemptsattemptidget) | **GET** /b/test_library/history/attempts/{attempt_id} | Get test attempt history
[**getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet**](DefaultApi.md#gettestattemptroutebtestlibraryattemptsattemptidget) | **GET** /b/test_library/attempts/{attempt_id} | Get test attempt details
[**getTestWithQuestionsRouteBTestLibraryTestsTestIdGet**](DefaultApi.md#gettestwithquestionsroutebtestlibraryteststestidget) | **GET** /b/test_library/tests/{test_id} | Get test with questions
[**getUserActivitiesBUserActivityActivitiesGet**](DefaultApi.md#getuseractivitiesbuseractivityactivitiesget) | **GET** /b/user_activity/activities | Get user activities
[**getUserSessionsEndpointBChatAiSessionsGet**](DefaultApi.md#getusersessionsendpointbchataisessionsget) | **GET** /b/chat_ai/sessions | Get user&#39;s chat sessions
[**getUserTestAttemptsRouteBTestLibraryAttemptsGet**](DefaultApi.md#getusertestattemptsroutebtestlibraryattemptsget) | **GET** /b/test_library/attempts | Get user test attempts
[**getUserTestHistoryRouteBTestLibraryUsersHistoryGet**](DefaultApi.md#getusertesthistoryroutebtestlibraryusershistoryget) | **GET** /b/test_library/users/history | Get user test history
[**incrementViewResourceBResourcesResourcesIncrementViewPost**](DefaultApi.md#incrementviewresourcebresourcesresourcesincrementviewpost) | **POST** /b/resources/resources/increment_view | Increment view count of a resource
[**leaderboardBLeaderboardLeaderboardGet**](DefaultApi.md#leaderboardbleaderboardleaderboardget) | **GET** /b/leaderboard/leaderboard | Get leaderboard and user ranking
[**listResourcesEndpointBResourcesResourcesGet**](DefaultApi.md#listresourcesendpointbresourcesresourcesget) | **GET** /b/resources/resources | List resources
[**readResourceBResourcesResourcesResourceIdGet**](DefaultApi.md#readresourcebresourcesresourcesresourceidget) | **GET** /b/resources/resources/{resource_id} | Get resource details
[**startTestRouteBTestLibraryTestsTestIdStartPost**](DefaultApi.md#starttestroutebtestlibraryteststestidstartpost) | **POST** /b/test_library/tests/{test_id}/start | Start a test
[**submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost**](DefaultApi.md#submitanswerroutebtestlibraryattemptsattemptidanswerpost) | **POST** /b/test_library/attempts/{attempt_id}/answer | Submit an answer
[**submitDailyAnswerBUserActivityDailyQuestionSubmitPost**](DefaultApi.md#submitdailyanswerbuseractivitydailyquestionsubmitpost) | **POST** /b/user_activity/daily-question/submit | Submit answer for daily question
[**toggleLikeResourceBResourcesResourcesToggleLikePost**](DefaultApi.md#togglelikeresourcebresourcesresourcestogglelikepost) | **POST** /b/resources/resources/toggle_like | Toggle like on a resource
[**updateResourceEndpointBResourcesResourcesResourceIdPut**](DefaultApi.md#updateresourceendpointbresourcesresourcesresourceidput) | **PUT** /b/resources/resources/{resource_id} | Update resource details
[**updateUserDetailsBManageUserUsersPut**](DefaultApi.md#updateuserdetailsbmanageuserusersput) | **PUT** /b/manage_user/users | Update user details
[**updateUserPasswordBManageUserUsersPasswordPut**](DefaultApi.md#updateuserpasswordbmanageuseruserspasswordput) | **PUT** /b/manage_user/users/password | Update user password
[**uploadResourceBResourcesResourcesPost**](DefaultApi.md#uploadresourcebresourcesresourcespost) | **POST** /b/resources/resources | Upload a new resource
[**uploadUserImageBManageUserUsersUploadImagePost**](DefaultApi.md#uploaduserimagebmanageuserusersuploadimagepost) | **POST** /b/manage_user/users/upload-image | Upload user image
[**userStatisticsBUserStatisticsUserStatisticsGet**](DefaultApi.md#userstatisticsbuserstatisticsuserstatisticsget) | **GET** /b/user_statistics/user-statistics | Get user statistics


# **addNewActivityBUserActivityActivitiesPost**
> Activity addNewActivityBUserActivityActivitiesPost(addActivityRequest)

Add a new activity

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final AddActivityRequest addActivityRequest = ; // AddActivityRequest | 

try {
    final response = api.addNewActivityBUserActivityActivitiesPost(addActivityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->addNewActivityBUserActivityActivitiesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addActivityRequest** | [**AddActivityRequest**](AddActivityRequest.md)|  | 

### Return type

[**Activity**](Activity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatEndpointBChatAiChatPost**
> ChatResponse chatEndpointBChatAiChatPost(chatRequest)

Process a chat request

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final ChatRequest chatRequest = ; // ChatRequest | 

try {
    final response = api.chatEndpointBChatAiChatPost(chatRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->chatEndpointBChatAiChatPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatRequest** | [**ChatRequest**](ChatRequest.md)|  | 

### Return type

[**ChatResponse**](ChatResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkIfUserExistsBManageUserUsersCheckExistsPost**
> UserExistsResponse checkIfUserExistsBManageUserUsersCheckExistsPost(checkUserExistsRequest)

Check if a user exists

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final CheckUserExistsRequest checkUserExistsRequest = ; // CheckUserExistsRequest | 

try {
    final response = api.checkIfUserExistsBManageUserUsersCheckExistsPost(checkUserExistsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->checkIfUserExistsBManageUserUsersCheckExistsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkUserExistsRequest** | [**CheckUserExistsRequest**](CheckUserExistsRequest.md)|  | 

### Return type

[**UserExistsResponse**](UserExistsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNewUserBManageUserUsersPost**
> UserResponse createNewUserBManageUserUsersPost(userCreate)

Create a new user

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final UserCreate userCreate = ; // UserCreate | 

try {
    final response = api.createNewUserBManageUserUsersPost(userCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createNewUserBManageUserUsersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreate** | [**UserCreate**](UserCreate.md)|  | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteResourceEndpointBResourcesResourcesResourceIdDelete**
> deleteResourceEndpointBResourcesResourcesResourceIdDelete(resourceId)

Delete a resource

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String resourceId = resourceId_example; // String | 

try {
    api.deleteResourceEndpointBResourcesResourcesResourceIdDelete(resourceId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteResourceEndpointBResourcesResourcesResourceIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSessionEndpointBChatAiSessionSessionIdDelete**
> JsonObject deleteSessionEndpointBChatAiSessionSessionIdDelete(sessionId)

Delete a chat session

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String sessionId = sessionId_example; // String | 

try {
    final response = api.deleteSessionEndpointBChatAiSessionSessionIdDelete(sessionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteSessionEndpointBChatAiSessionSessionIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserAccountBManageUserUsersDelete**
> StrResponse deleteUserAccountBManageUserUsersDelete()

Delete user

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.deleteUserAccountBManageUserUsersDelete();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteUserAccountBManageUserUsersDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StrResponse**](StrResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetchDailyQuestionBUserActivityDailyQuestionGet**
> DailyQuestionWithAttempt fetchDailyQuestionBUserActivityDailyQuestionGet(date)

Get question of the day with user attempt status

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String date = date_example; // String | Date in YYYY-MM-DD format (optional)

try {
    final response = api.fetchDailyQuestionBUserActivityDailyQuestionGet(date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->fetchDailyQuestionBUserActivityDailyQuestionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| Date in YYYY-MM-DD format (optional) | [optional] 

### Return type

[**DailyQuestionWithAttempt**](DailyQuestionWithAttempt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost**
> TestAttemptSummary finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost(attemptId)

Finish a test attempt

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String attemptId = attemptId_example; // String | 

try {
    final response = api.finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost(attemptId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptId** | **String**|  | 

### Return type

[**TestAttemptSummary**](TestAttemptSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTestsRouteBTestLibraryTestsGet**
> TestSummaryList getAllTestsRouteBTestLibraryTestsGet(category, cloudProvider, difficulty, status, search, sortBy, sortOrder, limit, cursor)

Get all tests with filter, search, sort, pagination

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String category = category_example; // String | 
final String cloudProvider = cloudProvider_example; // String | 
final String difficulty = difficulty_example; // String | 
final String status = status_example; // String | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final int limit = 56; // int | 
final String cursor = cursor_example; // String | 

try {
    final response = api.getAllTestsRouteBTestLibraryTestsGet(category, cloudProvider, difficulty, status, search, sortBy, sortOrder, limit, cursor);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getAllTestsRouteBTestLibraryTestsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**|  | [optional] 
 **cloudProvider** | **String**|  | [optional] 
 **difficulty** | **String**|  | [optional] 
 **status** | **String**|  | [optional] [default to 'active']
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] [default to 'created_at']
 **sortOrder** | **String**|  | [optional] [default to 'desc']
 **limit** | **int**|  | [optional] [default to 10]
 **cursor** | **String**|  | [optional] 

### Return type

[**TestSummaryList**](TestSummaryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUserDetailsBManageUserUsersMeGet**
> UserResponse getCurrentUserDetailsBManageUserUsersMeGet()

Get current user details

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.getCurrentUserDetailsBManageUserUsersMeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getCurrentUserDetailsBManageUserUsersMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecommendationsBRecommendationRecommendationsGet**
> TestRecommendationList getRecommendationsBRecommendationRecommendationsGet(recommendationType, limit)

Get test recommendations

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final RecommendationType recommendationType = ; // RecommendationType | 
final int limit = 56; // int | 

try {
    final response = api.getRecommendationsBRecommendationRecommendationsGet(recommendationType, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getRecommendationsBRecommendationRecommendationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recommendationType** | [**RecommendationType**](.md)|  | [optional] 
 **limit** | **int**|  | [optional] [default to 10]

### Return type

[**TestRecommendationList**](TestRecommendationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionHistoryEndpointBChatAiSessionSessionIdGet**
> SessionHistoryResponse getSessionHistoryEndpointBChatAiSessionSessionIdGet(sessionId)

Get chat session history

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String sessionId = sessionId_example; // String | 

try {
    final response = api.getSessionHistoryEndpointBChatAiSessionSessionIdGet(sessionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSessionHistoryEndpointBChatAiSessionSessionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 

### Return type

[**SessionHistoryResponse**](SessionHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStreakBUserActivityDailyStreakGet**
> DailyStreak getStreakBUserActivityDailyStreakGet()

Get user's current streak

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.getStreakBUserActivityDailyStreakGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getStreakBUserActivityDailyStreakGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DailyStreak**](DailyStreak.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet**
> TestAttemptHistory getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet(attemptId)

Get test attempt history

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String attemptId = attemptId_example; // String | 

try {
    final response = api.getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet(attemptId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptId** | **String**|  | 

### Return type

[**TestAttemptHistory**](TestAttemptHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet**
> TestAttempt getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet(attemptId)

Get test attempt details

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String attemptId = attemptId_example; // String | 

try {
    final response = api.getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet(attemptId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptId** | **String**|  | 

### Return type

[**TestAttempt**](TestAttempt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestWithQuestionsRouteBTestLibraryTestsTestIdGet**
> TestWithQuestions getTestWithQuestionsRouteBTestLibraryTestsTestIdGet(testId)

Get test with questions

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String testId = testId_example; // String | 

try {
    final response = api.getTestWithQuestionsRouteBTestLibraryTestsTestIdGet(testId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getTestWithQuestionsRouteBTestLibraryTestsTestIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 

### Return type

[**TestWithQuestions**](TestWithQuestions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserActivitiesBUserActivityActivitiesGet**
> ActivityList getUserActivitiesBUserActivityActivitiesGet()

Get user activities

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.getUserActivitiesBUserActivityActivitiesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserActivitiesBUserActivityActivitiesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ActivityList**](ActivityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSessionsEndpointBChatAiSessionsGet**
> UserSessionsResponse getUserSessionsEndpointBChatAiSessionsGet()

Get user's chat sessions

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.getUserSessionsEndpointBChatAiSessionsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserSessionsEndpointBChatAiSessionsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSessionsResponse**](UserSessionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTestAttemptsRouteBTestLibraryAttemptsGet**
> PaginatedTestAttemptResponse getUserTestAttemptsRouteBTestLibraryAttemptsGet(testId, status, mode, search, cursor, pageSize)

Get user test attempts

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String testId = testId_example; // String | 
final String status = status_example; // String | Filter by status (completed, in-progress)
final TestMode mode = ; // TestMode | Filter by mode (TEST/EXAM)
final String search = search_example; // String | Search by test name or other fields
final String cursor = cursor_example; // String | Document ID for pagination
final int pageSize = 56; // int | Number of attempts per page

try {
    final response = api.getUserTestAttemptsRouteBTestLibraryAttemptsGet(testId, status, mode, search, cursor, pageSize);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserTestAttemptsRouteBTestLibraryAttemptsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | [optional] 
 **status** | **String**| Filter by status (completed, in-progress) | [optional] 
 **mode** | [**TestMode**](.md)| Filter by mode (TEST/EXAM) | [optional] 
 **search** | **String**| Search by test name or other fields | [optional] 
 **cursor** | **String**| Document ID for pagination | [optional] 
 **pageSize** | **int**| Number of attempts per page | [optional] [default to 10]

### Return type

[**PaginatedTestAttemptResponse**](PaginatedTestAttemptResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTestHistoryRouteBTestLibraryUsersHistoryGet**
> TestAttemptHistoryList getUserTestHistoryRouteBTestLibraryUsersHistoryGet(limit)

Get user test history

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final int limit = 56; // int | 

try {
    final response = api.getUserTestHistoryRouteBTestLibraryUsersHistoryGet(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserTestHistoryRouteBTestLibraryUsersHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 10]

### Return type

[**TestAttemptHistoryList**](TestAttemptHistoryList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incrementViewResourceBResourcesResourcesIncrementViewPost**
> ViewResponse incrementViewResourceBResourcesResourcesIncrementViewPost(resourceId)

Increment view count of a resource

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String resourceId = resourceId_example; // String | 

try {
    final response = api.incrementViewResourceBResourcesResourcesIncrementViewPost(resourceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->incrementViewResourceBResourcesResourcesIncrementViewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**|  | 

### Return type

[**ViewResponse**](ViewResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaderboardBLeaderboardLeaderboardGet**
> LeaderboardResponse leaderboardBLeaderboardLeaderboardGet(limit)

Get leaderboard and user ranking

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final int limit = 56; // int | 

try {
    final response = api.leaderboardBLeaderboardLeaderboardGet(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->leaderboardBLeaderboardLeaderboardGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 10]

### Return type

[**LeaderboardResponse**](LeaderboardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listResourcesEndpointBResourcesResourcesGet**
> ResourceList listResourcesEndpointBResourcesResourcesGet(certification, resourceType, tag, search, sortBy, sortOrder, limit, cursor)

List resources

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String certification = certification_example; // String | 
final String resourceType = resourceType_example; // String | 
final String tag = tag_example; // String | 
final String search = search_example; // String | 
final String sortBy = sortBy_example; // String | 
final String sortOrder = sortOrder_example; // String | 
final int limit = 56; // int | 
final String cursor = cursor_example; // String | 

try {
    final response = api.listResourcesEndpointBResourcesResourcesGet(certification, resourceType, tag, search, sortBy, sortOrder, limit, cursor);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->listResourcesEndpointBResourcesResourcesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certification** | **String**|  | [optional] 
 **resourceType** | **String**|  | [optional] 
 **tag** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **sortBy** | **String**|  | [optional] [default to 'created_at']
 **sortOrder** | **String**|  | [optional] [default to 'desc']
 **limit** | **int**|  | [optional] [default to 10]
 **cursor** | **String**|  | [optional] 

### Return type

[**ResourceList**](ResourceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readResourceBResourcesResourcesResourceIdGet**
> Resource readResourceBResourcesResourcesResourceIdGet(resourceId)

Get resource details

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String resourceId = resourceId_example; // String | 

try {
    final response = api.readResourceBResourcesResourcesResourceIdGet(resourceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->readResourceBResourcesResourcesResourceIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**|  | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startTestRouteBTestLibraryTestsTestIdStartPost**
> TestAttemptSummary startTestRouteBTestLibraryTestsTestIdStartPost(testId, startTestRequest)

Start a test

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String testId = testId_example; // String | 
final StartTestRequest startTestRequest = ; // StartTestRequest | 

try {
    final response = api.startTestRouteBTestLibraryTestsTestIdStartPost(testId, startTestRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->startTestRouteBTestLibraryTestsTestIdStartPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **String**|  | 
 **startTestRequest** | [**StartTestRequest**](StartTestRequest.md)|  | 

### Return type

[**TestAttemptSummary**](TestAttemptSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost**
> SubmitAnswerResponse submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost(attemptId, submitAnswerRequest)

Submit an answer

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String attemptId = attemptId_example; // String | 
final SubmitAnswerRequest submitAnswerRequest = ; // SubmitAnswerRequest | 

try {
    final response = api.submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost(attemptId, submitAnswerRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptId** | **String**|  | 
 **submitAnswerRequest** | [**SubmitAnswerRequest**](SubmitAnswerRequest.md)|  | 

### Return type

[**SubmitAnswerResponse**](SubmitAnswerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitDailyAnswerBUserActivityDailyQuestionSubmitPost**
> DailyStreak submitDailyAnswerBUserActivityDailyQuestionSubmitPost(answerSubmission)

Submit answer for daily question

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final AnswerSubmission answerSubmission = ; // AnswerSubmission | 

try {
    final response = api.submitDailyAnswerBUserActivityDailyQuestionSubmitPost(answerSubmission);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->submitDailyAnswerBUserActivityDailyQuestionSubmitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **answerSubmission** | [**AnswerSubmission**](AnswerSubmission.md)|  | 

### Return type

[**DailyStreak**](DailyStreak.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **toggleLikeResourceBResourcesResourcesToggleLikePost**
> LikeResponse toggleLikeResourceBResourcesResourcesToggleLikePost(resourceId)

Toggle like on a resource

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String resourceId = resourceId_example; // String | 

try {
    final response = api.toggleLikeResourceBResourcesResourcesToggleLikePost(resourceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->toggleLikeResourceBResourcesResourcesToggleLikePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**|  | 

### Return type

[**LikeResponse**](LikeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateResourceEndpointBResourcesResourcesResourceIdPut**
> Resource updateResourceEndpointBResourcesResourcesResourceIdPut(resourceId, resourceUpdate)

Update resource details

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String resourceId = resourceId_example; // String | 
final ResourceUpdate resourceUpdate = ; // ResourceUpdate | 

try {
    final response = api.updateResourceEndpointBResourcesResourcesResourceIdPut(resourceId, resourceUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateResourceEndpointBResourcesResourcesResourceIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**|  | 
 **resourceUpdate** | [**ResourceUpdate**](ResourceUpdate.md)|  | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserDetailsBManageUserUsersPut**
> UserResponse updateUserDetailsBManageUserUsersPut(userUpdate)

Update user details

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final UserUpdate userUpdate = ; // UserUpdate | 

try {
    final response = api.updateUserDetailsBManageUserUsersPut(userUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateUserDetailsBManageUserUsersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userUpdate** | [**UserUpdate**](UserUpdate.md)|  | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPasswordBManageUserUsersPasswordPut**
> StrResponse updateUserPasswordBManageUserUsersPasswordPut(passwordUpdateRequest)

Update user password

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final PasswordUpdateRequest passwordUpdateRequest = ; // PasswordUpdateRequest | 

try {
    final response = api.updateUserPasswordBManageUserUsersPasswordPut(passwordUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateUserPasswordBManageUserUsersPasswordPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passwordUpdateRequest** | [**PasswordUpdateRequest**](PasswordUpdateRequest.md)|  | 

### Return type

[**StrResponse**](StrResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadResourceBResourcesResourcesPost**
> Resource uploadResourceBResourcesResourcesPost(title, description, resourceType, link, certification, thumbnail, tags, file)

Upload a new resource

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final String title = title_example; // String | 
final String description = description_example; // String | 
final ResourceType resourceType = ; // ResourceType | 
final String link = link_example; // String | 
final String certification = certification_example; // String | 
final String thumbnail = thumbnail_example; // String | 
final BuiltList<String> tags = ; // BuiltList<String> | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.uploadResourceBResourcesResourcesPost(title, description, resourceType, link, certification, thumbnail, tags, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->uploadResourceBResourcesResourcesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**|  | 
 **description** | **String**|  | 
 **resourceType** | [**ResourceType**](ResourceType.md)|  | 
 **link** | **String**|  | [optional] 
 **certification** | **String**|  | [optional] 
 **thumbnail** | **String**|  | [optional] 
 **tags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadUserImageBManageUserUsersUploadImagePost**
> ImageUploadResponse uploadUserImageBManageUserUsersUploadImagePost(file)

Upload user image

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.uploadUserImageBManageUserUsersUploadImagePost(file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->uploadUserImageBManageUserUsersUploadImagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 

### Return type

[**ImageUploadResponse**](ImageUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userStatisticsBUserStatisticsUserStatisticsGet**
> UserStatistics userStatisticsBUserStatisticsUserStatisticsGet()

Get user statistics

### Example
```dart
import 'package:cloud_certify_service_api/api.dart';

final api = CloudCertifyServiceApi().getDefaultApi();

try {
    final response = api.userStatisticsBUserStatisticsUserStatisticsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->userStatisticsBUserStatisticsUserStatisticsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserStatistics**](UserStatistics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

