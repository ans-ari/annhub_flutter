import 'package:annhub_flutter_data_sources/annhub_flutter_data_sources.dart';
import 'package:annhub_flutter_data_sources/src/mapper/params/flora_info_params_mapper.dart';
import 'package:annhub_flutter_data_sources/src/utils/const.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:networking/mapper.dart';
import 'package:networking/networking.dart';
import 'package:networking/response_data.dart';

import 'iris_remote_data_sources_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<DioClient>(as: #MockDioClient),
])
void main() {
  late MockDioClient _mockDioClient;

  _mockDioClient = MockDioClient();
  final _irisPredictionResponseToEntityMapper =
      IrisPredictionResponseToEntityMapper();
  late IrisRemoteDataSourceImpl _irisRemoteDataSourceImpl;
  const FloraInfoParamsMapper _floraInfoParamsMapper = FloraInfoParamsMapper();
  final _floraInfoParams = FloraInfoParams(data: TestValue.floraInfo);
  final _irisPredictionResponse =
      IrisPredictionResponse(prediction: TestValue.irisPredictionResponse);
  final _irisPrediction =
      IrisPrediction(prediction: TestValue.irisPredictionResponse);
  final _requestOptions = RequestOptions(
      path: '/api/v1/predict',
      // baseUrl: 'http://192.168.1.3:8080',
      baseUrl: 'http://35.185.182.180:8080',
      data: _floraInfoParamsMapper.map(_floraInfoParams).data,
      method: 'POST');
  setUp(() {
    _irisRemoteDataSourceImpl = IrisRemoteDataSourceImpl(
        dioClient: _mockDioClient,
        irisPredictionResponseToEntityMapper:
            _irisPredictionResponseToEntityMapper,
        floraInfoParamMapper: _floraInfoParamsMapper);
  });

  tearDown(() {});
  test(
    TestName.getAnsIrisPrediction,
    () async {
      when(
        _mockDioClient.post(
          '/predict',
          data: _floraInfoParamsMapper.map(_floraInfoParams).toJson(),
        ),
      ).thenAnswer(
        (_) async => TestValue.irisPredictionResponse,
      );
      expect(
          await _irisRemoteDataSourceImpl.fetchIrisPrediction(
              param: _floraInfoParams),
          TestValue.irisPredictionResponse);
    },
  );

  // test(
  //   TestName.getAriIrisPrediction,
  //   () async {
  //     when(
  //       _mockDioClient.fetch(
  //         requestOptions: _requestOptions,
  //       ),
  //     ).thenAnswer(
  //       (_) async =>
  //           _irisPredictionResponseToEntityMapper.map(_irisPredictionResponse),
  //     );
  //     expect(
  //         await _irisRemoteDataSourceImpl.fetchIrisPredictionARI(
  //             param: _floraInfoParams),
  //         _irisPrediction);
  //   },
  // );
}
