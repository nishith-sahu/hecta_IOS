import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetotpCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETOTP',
      apiUrl:
          'https://api.msg91.com/api/sendotp.php?authkey=376986AKRbQrzjmzV627e45afP1&mobile=918840454109&message=1234%20is%20your%20OTP%20to%20login%20on%20Hecta.%20It%20is%20valid%20for%2010%20minutes.%20Do%20not%20share%20your%20OTP%20with%20anyone.&sender=HectaP&otp=1234&&DLT_TE_ID=1107165588804370706',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OTPVerifyCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'OTPVerify',
      apiUrl:
          'https://api.msg91.com/api/verifyRequestOTP.php?authkey=376986AKRbQrzjmzV627e45afP1&mobile=918840454109&otp=1234',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MsgetotpCall {
  static Future<ApiCallResponse> call({
    String? authkey = '376986AKRbQrzjmzV627e45afP1',
    String? templateId = '62ac2f2e7e9eef0cf9126413',
    String? mobile = '',
    int? otp,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'msgetotp',
      apiUrl: 'https://api.msg91.com/api/v5/otp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authkey': authkey,
        'template_id': templateId,
        'mobile': mobile,
        'otp': otp,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PlacesCall {
  static Future<ApiCallResponse> call({
    String? input = '',
    String? key = 'AIzaSyDIWXN3YP6mcoPMrQhAFm8oDHv1jexoLJk',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Places',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'key': key,
        'components': "country:in",
        'types': "(cities)",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic jSONPath1(dynamic response) => getJsonField(
        response,
        r'''$.predictions[0:].description''',
        true,
      );
}

class CalendarAPICall {
  static Future<ApiCallResponse> call({
    String? yourAccessToken =
        '677987645457-l5n3bml1vpvihuv6rhubava6ejaq72ju.apps.googleusercontent.com',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CalendarAPI',
      apiUrl:
          'https://www.googleapis.com/calendar/v3/users/me/calendarList?key=AIzaSyDSfV1scR-wS2EULXRkgzMlYmXX9Uq9Fqc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${yourAccessToken}',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReadFirebaseDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ReadFirebaseData',
      apiUrl:
          'https://firestore.googleapis.com/v1/projects/hecta-a99ff/databases/(default)/documents/Properties?key=AIzaSyBSPMsntXqbMCKLV8go1zhB8yE8WruOK3U',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic propPath(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      );
}

class TestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl:
          'https://firestore.googleapis.com/v1/projects/hecta-a99ff/databases/(default)/ff_push_notifications/twy5fRCCCldV264xMZuv',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendOtpCall {
  static Future<ApiCallResponse> call({
    int? mobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SendOtp',
      apiUrl:
          'https://api.msg91.com/api/v5/otp?template_id=62ac2f2e7e9eef0cf9126413&authkey=376986AKRbQrzjmzV627e45afP1&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerifyOTPCall {
  static Future<ApiCallResponse> call({
    int? num,
    int? otp,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'VerifyOTP',
      apiUrl:
          'https://api.msg91.com/api/v5/otp/verify?authkey=376986AKRbQrzjmzV627e45afP1&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'num': num,
        'otp': otp,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReSendOTPCall {
  static Future<ApiCallResponse> call({
    int? mobile,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ReSendOTP',
      apiUrl:
          'https://api.msg91.com/api/v5/otp/retry?authkey=376986AKRbQrzjmzV627e45afP1&retrytype=Voice&retrytype=text&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
