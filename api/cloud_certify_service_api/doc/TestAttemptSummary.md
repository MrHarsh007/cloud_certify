# cloud_certify_service_api.model.TestAttemptSummary

## Load the model package
```dart
import 'package:cloud_certify_service_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attemptId** | **String** |  | 
**testId** | **String** |  | 
**mode** | [**TestMode**](TestMode.md) |  | 
**status** | **String** |  | 
**startTime** | **int** |  | 
**totalQuestions** | **int** |  | 
**testData** | [**TestSummary**](TestSummary.md) |  | [optional] 
**endTime** | **int** |  | [optional] 
**attemptedQuestions** | **int** |  | [optional] [default to 0]
**correctAnswers** | **int** |  | [optional] 
**wrongAnswers** | **int** |  | [optional] 
**score** | **int** |  | [optional] 
**resume** | **bool** |  | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


