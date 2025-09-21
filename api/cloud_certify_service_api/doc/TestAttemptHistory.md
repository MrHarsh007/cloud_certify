# cloud_certify_service_api.model.TestAttemptHistory

## Load the model package
```dart
import 'package:cloud_certify_service_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**testId** | **String** |  | 
**testTitle** | **String** |  | 
**userId** | **String** |  | 
**mode** | [**TestMode**](TestMode.md) |  | 
**status** | **String** |  | 
**startTime** | **int** |  | 
**totalQuestions** | **int** |  | 
**endTime** | **int** |  | [optional] 
**attemptedQuestions** | [**BuiltList&lt;AttemptedQuestionDetail&gt;**](AttemptedQuestionDetail.md) |  | [optional] [default to ListBuilder()]
**unattemptedQuestions** | [**BuiltList&lt;UnattemptedQuestion&gt;**](UnattemptedQuestion.md) |  | [optional] [default to ListBuilder()]
**correctAnswers** | **int** |  | [optional] [default to 0]
**wrongAnswers** | **int** |  | [optional] [default to 0]
**score** | **int** |  | [optional] 
**category** | **String** |  | [optional] 
**totalTimeTaken** | **int** |  | [optional] 
**avgTimePerQuestion** | **int** |  | [optional] 
**difficulty** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


