import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static const String apiUrl = "";

  dynamic post(String path, {dynamic data}) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('$apiUrl/$path'),
        body: json.encode(data),
      );
      return response.body;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  dynamic get(String path, {dynamic data}) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl/$path'),
      );
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
