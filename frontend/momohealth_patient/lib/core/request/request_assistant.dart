// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';

import '../../main.dart';
import '../constants/constants.dart';

// import 'package:path/path.dart' as p;

class RequestAssistant {
  static const String url = "http://192.168.43.86:8000/api/";
  Future<dynamic> httpGetRequest(String path, String authorization) async {
    try {
      http.Response response = await http.get(Uri.parse(url + path), headers: {
        'Accept': '*/*',
        'Authorization': authorization != ""
            ? 'Bearer $authorization'
            : 'Bearer ${userRepository.token.isEmpty ? box.read('token') : userRepository.token}',
      });

      // if (response.statusCode == 200) {
      if ([200, 201].contains(response.statusCode)) {
        print(utf8.decode(response.bodyBytes));
        String jSonData = utf8.decode(response.bodyBytes);
        var decodeData = jsonDecode(jSonData);
        return {"success": true, "response": decodeData};
      } else {
        ("mon code decode n'est pas là");
        throw jsonDecode(utf8.decode(response.bodyBytes))['error'];
      }
    } on FormatException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on HttpException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on TimeoutException {
      throw "La demande a pris trop de temps pour répondre. Veuillez reessayer";
    } on SocketException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> httpPostRequest(
      String path, String authorization, dynamic data,
      {bool jsonType = false}) async {
    try {
      http.Response response = await http.post(Uri.parse(url + path),
          headers: {
            'Accept': '*/*',
            'Authorization': authorization != ""
                ? 'Bearer $authorization'
                : 'Bearer ${userRepository.token.isEmpty ? box.read('token') : userRepository.token}',
            if (jsonType) 'Content-Type': 'application/json',
          },
          body: data);
      print(utf8.decode(response.bodyBytes));
      // try {
      if (!await isNetworkAvailable()) {
        throw "Veuillez vérifier votre connexion et rééssayer.";
      }
      if ([200, 201].contains(response.statusCode)) {
        String jSonData = utf8.decode(response.bodyBytes);
        var decodeData = jsonDecode(jSonData);
        return {"success": true, "response": decodeData};
      } else {
        ("mon code decode n'est pas là");
        throw jsonDecode(utf8.decode(response.bodyBytes))['error'] ??
            jsonDecode(utf8.decode(response.bodyBytes))['detail'];
      }
    } on FormatException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on HttpException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on TimeoutException {
      throw "La demande a pris trop de temps pour répondre. Veuillez reessayer";
    } on SocketException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> httpPutRequest(
      String path, String authorization, dynamic data,
      {bool jsonType = false}) async {
    try {
      http.Response response = await http.put(Uri.parse(url + path),
          headers: {
            'Accept': '*/*',
            'Authorization': authorization != ""
                ? 'Bearer $authorization'
                : 'Bearer ${userRepository.token.isEmpty ? box.read('token') : userRepository.token}',
            if (jsonType) 'Content-Type': 'application/json',
          },
          body: data);
      print(utf8.decode(response.bodyBytes));
      // try {
      if (!await isNetworkAvailable()) {
        throw "Veuillez vérifier votre connexion et rééssayer.";
      }
      if ([200, 201].contains(response.statusCode)) {
        String jSonData = utf8.decode(response.bodyBytes);
        var decodeData = jsonDecode(jSonData);
        return {"success": true, "response": decodeData};
      } else {
        ("mon code decode n'est pas là");
        throw jsonDecode(utf8.decode(response.bodyBytes))['error'];
      }
    } on FormatException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on HttpException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on TimeoutException {
      throw "La demande a pris trop de temps pour répondre. Veuillez reessayer";
    } on SocketException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> httpPatchRequest(
      String path, String authorization, dynamic data,
      {bool jsonType = false}) async {
    try {
      http.Response response = await http.patch(Uri.parse(url + path),
          headers: {
            'Accept': '*/*',
            'Authorization': authorization != ""
                ? 'Bearer $authorization'
                : 'Bearer ${userRepository.token.isEmpty ? box.read('token') : userRepository.token}',
            if (jsonType) 'Content-Type': 'application/json',
          },
          body: data);
      print(utf8.decode(response.bodyBytes));
      // try {
      if (!await isNetworkAvailable()) {
        throw "Veuillez vérifier votre connexion et rééssayer.";
      }
      if ([200, 201].contains(response.statusCode)) {
        String jSonData = utf8.decode(response.bodyBytes);
        var decodeData = jsonDecode(jSonData);
        return {"success": true, "response": decodeData};
      } else {
        ("mon code decode n'est pas là");
        throw jsonDecode(utf8.decode(response.bodyBytes))['error'];
      }
    } on FormatException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on HttpException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } on TimeoutException {
      throw "La demande a pris trop de temps pour répondre. Veuillez reessayer";
    } on SocketException {
      throw "Une erreur s'est produite. Veuillez reessayer.";
    } catch (e) {
      rethrow;
    }
  }

  Future postFileRequest(String path, String authorization, File file) async {
    final dio = Dio();
    final formData = FormData.fromMap({
      'type': 'image',
      'id_message': DateTime.now().toIso8601String(),
      'file': await MultipartFile.fromFile(file.path,
          filename: file.path.split('/').last)
    });
    final response = await dio.post(
      url + path,
      data: formData,
      onSendProgress: (int sent, int total) {
        print('$sent $total');
      },
    );
  }
}
