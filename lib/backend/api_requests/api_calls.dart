import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TotaltblamountofMonthCall {
  static Future<ApiCallResponse> call({
    String? varLot = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tbltlot_param": "$varLot"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'totaltblamountofMonth',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_total_tblamount',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic totalofmonth(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GettotalamountCall {
  static Future<ApiCallResponse> call({
    String? vallot = '',
  }) async {
    final ffApiRequestBody = '''
{
  "varlot": "$vallot"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'gettotalamount',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_total_amount',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? jasonTotalAmount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class GettotalamountbydateCall {
  static Future<ApiCallResponse> call({
    String? jsonLot = '',
    String? jsonSdate = '',
    String? jsonEdate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "end_date": "$jsonEdate",
  "start_date": "$jsonSdate",
  "vartlot": "$jsonLot"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'gettotalamountbydate',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_total_amount_bydate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic sontotal(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetlistbetweendatesCall {
  static Future<ApiCallResponse> call({
    String? sDate = '',
    String? eDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "end_date": "$eDate",
  "start_date": "$sDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getlistbetweendates',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_list_betweendates',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? jid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fldid''',
      ));
  static List<String>? jdate(dynamic response) => (getJsonField(
        response,
        r'''$[:].fldcreated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jworker(dynamic response) => (getJsonField(
        response,
        r'''$[:].tblworker''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? jamount(dynamic response) => (getJsonField(
        response,
        r'''$[:].tblamount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? jlot(dynamic response) => (getJsonField(
        response,
        r'''$[:].tbltlot''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jmonthof(dynamic response) => (getJsonField(
        response,
        r'''$[:].fldmonthof''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetlistbetweendatestGPTCall {
  static Future<ApiCallResponse> call({
    String? sDate = '',
    String? eDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "end_date": "$eDate",
  "start_date": "$sDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getlistbetweendatestGPT',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_list_betweendates_chatgpt',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetlistbetweendateschatgptwithlotCall {
  static Future<ApiCallResponse> call({
    String? startdate = '',
    String? enddate = '',
    String? vlot = '',
  }) async {
    final ffApiRequestBody = '''
{
  "end_date": "$enddate",
  "start_date": "$startdate",
  "varlot": "$vlot"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getlistbetweendateschatgptwithlot',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/get_list_betweendates_chatgpt_withlot',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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
