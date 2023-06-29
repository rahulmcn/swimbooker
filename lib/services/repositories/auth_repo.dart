import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

import 'package:assignment/constants/strings.dart';

import '../../constants/server_url.dart';

class AuthDataRepo {
  Map<String, dynamic> mapData = {};

  // Future<RefreshToken> refreshTokenPostAPI(
  //     {String? endURL, String? refreshToken}) async {
  //   mapData["refreshToken"] = refreshToken;
  //   var response = await http
  //       .post(Uri.parse(baseUrl + endURL!),
  //           headers: <String, String>{
  //             HttpHeaders.contentTypeHeader: 'application/json',
  //           },
  //           body: json.encode(mapData))
  //       .timeout(apiTimeout);
  //   if (kDebugMode) {
  //     print("URL=>${baseUrl + endURL}");
  //     print("response=>${response.body}");
  //   }
  //   return RefreshToken.fromJson(jsonDecode(response.body));
  // }
}
