import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiCallFilosofosApeironCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
    int? perPage = 1,
    int? offset = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Call Filosofos Apeiron',
      apiUrl:
          'https://apeiron.bio/wp-json/wp/v2/posts?page=${page}&per_page=${perPage}&offset=${offset}&categories=24',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      );
  static dynamic descriptionEx(dynamic response) => getJsonField(
        response,
        r'''$[:].excerpt.rendered''',
        true,
      );
  static dynamic chatBotUrl(dynamic response) => getJsonField(
        response,
        r'''$[:].acf.chatbot''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].yoast_head_json.title''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].yoast_head_json.description''',
        true,
      );
  static dynamic ogImage(dynamic response) => getJsonField(
        response,
        r'''$[:].yoast_head_json.og_image[:].url''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].jetpack_featured_media_url''',
        true,
      );
}

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
