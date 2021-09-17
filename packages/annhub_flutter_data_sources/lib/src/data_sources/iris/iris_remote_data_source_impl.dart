import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:annhub_flutter_data_sources/src/mapper/params/flora_info_params_mapper.dart';
import 'package:annhub_flutter_domain/data.dart';
import 'package:annhub_flutter_domain/annhub_flutter_domain.dart';
import 'package:networking/mapper.dart';
import 'package:networking/networking.dart';
import 'package:networking/response_data.dart';

@Injectable(as: IrisRemoteDataSource)
class IrisRemoteDataSourceImpl implements IrisRemoteDataSource {
  const IrisRemoteDataSourceImpl(
      {required DioClient dioClient,
      FloraInfoParamsMapper floraInfoParamMapper =
          const FloraInfoParamsMapper(),
      required IrisPredictionResponseToEntityMapper
          irisPredictionResponseToEntityMapper})
      : _dioClient = dioClient,
        _floraInfoParamMapper = floraInfoParamMapper,
        _irisPredictionResponseToEntityMapper =
            irisPredictionResponseToEntityMapper;

  final DioClient _dioClient;
  final FloraInfoParamsMapper _floraInfoParamMapper;
  final IrisPredictionResponseToEntityMapper
      _irisPredictionResponseToEntityMapper;
  @override
  Future<List<double>> fetchIrisPrediction(
      {required FloraInfoParams param}) async {
    final data = _floraInfoParamMapper.map(param).toJson();

    final response = await _dioClient
        .post(
          '/predict',
          data: data,
        )
        .catchError(
            (onError) => {throw NetworkExceptions.getDioException(onError)});
    final result = (json.decode(response.toString()) as List<dynamic>)
        .map((e) => e as double)
        .toList();
    return result;
  }

  @override
  Future<IrisPrediction> fetchIrisPredictionARI(
      {required FloraInfoParams param}) async {
    final data = _floraInfoParamMapper.map(param);
    final requestOptions = RequestOptions(
        path: '/api/v1/predict',
        // baseUrl: 'http://192.168.1.3:8080',
        baseUrl: 'http://35.185.182.180:8080',
        data: data.data,
        method: 'POST');
    final response = await _dioClient
            .fetch(requestOptions: requestOptions)
            .catchError(
                (onError) => {throw NetworkExceptions.getDioException(onError)})
        as Map<String, dynamic>;

    final mappedResponse = IrisPredictionResponse.fromJson(response);
    return _irisPredictionResponseToEntityMapper.map(mappedResponse);
  }
}
