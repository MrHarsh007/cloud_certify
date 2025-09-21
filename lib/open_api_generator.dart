// Openapi Generator last run: : 2025-09-21T12:59:26.665516
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    debugLogging: true,
    additionalProperties: AdditionalProperties(
        useEnumExtension: true,
        pubName: 'cloud_certify_service_api',
        pubAuthor: 'Aviato Consultancy'),
    inputSpec: RemoteSpec(
        path:
            'https://base-service-6070296894.us-central1.run.app/b/openapi.json'),
    typeMappings: {'cloud_certify': 'cloud_certify'},
    generatorName: Generator.dio,
    forceAlwaysRun: true,
    outputDirectory: 'api/cloud_certify_service_api')
class FinalOpenAPI {}