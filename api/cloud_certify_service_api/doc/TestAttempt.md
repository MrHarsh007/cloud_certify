# cloud_certify_service_api.model.TestAttempt

## Load the model package
```dart
import 'package:cloud_certify_service_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**testId** | **String** |  | 
**mode** | [**TestMode**](TestMode.md) |  | 
**status** | **String** |  | 
**totalQuestions** | **int** |  | 
**startTime** | **int** |  | 
**correctAnswers** | **int** |  | [optional] [default to 0]
**wrongAnswers** | **int** |  | [optional] [default to 0]
**attemptedQuestions** | [**BuiltList&lt;AttemptedQuestion&gt;**](AttemptedQuestion.md) |  | [optional] [default to ListBuilder()]
**endTime** | **int** |  | [optional] 
**score** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


