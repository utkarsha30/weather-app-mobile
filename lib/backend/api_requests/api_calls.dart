import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start WeatherApi Group Code

class WeatherApiGroup {
  static String baseUrl = 'https://api.openweathermap.org';
  static Map<String, String> headers = {};
  static GetWeatherByNameCall getWeatherByNameCall = GetWeatherByNameCall();
}

class GetWeatherByNameCall {
  Future<ApiCallResponse> call({
    String? cityName = 'mumbai',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get weather by name',
      apiUrl: '${WeatherApiGroup.baseUrl}/data/2.5/weather',
      callType: ApiCallType.GET,
      headers: {
        ...WeatherApiGroup.headers,
      },
      params: {
        'q': cityName,
        'appid': "fae38a4bd23c666a450204ef0c6445d7",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic mainTemperature(dynamic response) => getJsonField(
        response,
        r'''$.main.temp''',
      );
  dynamic minTemperature(dynamic response) => getJsonField(
        response,
        r'''$.main.temp_min''',
      );
  dynamic maxTemperature(dynamic response) => getJsonField(
        response,
        r'''$.main.temp_max''',
      );
  dynamic humidity(dynamic response) => getJsonField(
        response,
        r'''$.main.humidity''',
      );
  dynamic wind(dynamic response) => getJsonField(
        response,
        r'''$.wind.deg''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

/// End WeatherApi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
