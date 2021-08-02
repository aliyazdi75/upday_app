import 'package:upday_app/data/constants/index.dart';

abstract class HttpHeader {
  static Future<Map<String, String>> setHeader() async {
    return {authHeader: '$authTypeHeader $token'};
  }
}
