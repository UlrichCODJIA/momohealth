import 'dart:io';

import 'package:momohealth_patient/widgets/loading_widget.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

import '../core/request/request_assistant.dart';
import 'package:dio/dio.dart' as dioRq;
import '../main.dart';
import '../models/user_model.dart';

class UserRepository extends GetxController {
  String? _token;
  UserModel? _user;

  // TextEditingController textEditingController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  RxString countryCode = "+225".obs;
  RxBool isEmail = false.obs;
  RxInt screenCurrentIndex = 0.obs;
  UserModel? get user {
    return _user;
  }

  String get token {
    return _token ?? "";
  }

  Future<String> signUp({required Map data}) async {
    try {
      var response =
          await RequestAssistant().httpPostRequest("users/register/", "", data);
      if (response['success']) {
        _token = response['response']['access_token'];
        box.write('token', _token);
        _user = UserModel.fromJson(response['response']['user']);
        //  {"success": true, "message": "Compte créé avec succes"};
        return "Compte créé avec succes";
      } else {
        throw response['error'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map> login({required Map data}) async {
    try {
      Get.dialog(const LoadingWidget());
      var response =
          await RequestAssistant().httpPostRequest("users/login/", "", data);
      print("°°°°°°°°°°°°°°°°°°°response $response");
      if (response['success']) {
        Get.back();
        _token = response['response']['access_token'];
        box.write('token', _token);
        _user = UserModel.fromJson(response['response']['user']);
        return {"success": true, "message": "Authentification reussie"};
      } else {
        throw response['response'] ?? response['message'];
      }
    } catch (e) {
      Get.closeAllSnackbars();
      Get.back();
      rethrow;
    }
  }

  Future<String> postForgetPassword({required Map data}) async {
    try {
      var response =
          await RequestAssistant().httpPostRequest("forget-password", "", data);
      if (response['success']) {
        return response['message'];
      } else {
        throw response['message'] ?? "Oups! Veuillez reesayer";
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> postUserValidation({required Map data}) async {
    try {
      var response = await RequestAssistant()
          .httpPostRequest("validate-account", "", data);
      if (response['success']) {
        _token = response['response']['token'];
        box.write('token', _token);
        _user = UserModel.fromJson(response['response']['user']);
        return _user!;
      } else {
        throw response['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> postResetPassword({required Map data}) async {
    try {
      var response =
          await RequestAssistant().httpPostRequest("reset-password", "", data);
      if (response['success']) {
        return response['message'];
      } else {
        throw response['message'] ?? "Oups! Veuillez reesayer";
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> postEditProfil({required Map data}) async {
//     {
//     "nom": "John Doe",
//     "phone": "1234567890",
//     "indicatif"
//     "password": "secret123",
//     "sexe": "M",
//     "point_livraison_id": 1
//      }
    try {
      var response =
          await RequestAssistant().httpPostRequest("edit-profil", "", data);
      if (response['success']) {
        _user = UserModel.fromJson(response['user']);
        update();
        return response['message'];
      } else {
        throw response['message'] ?? "Oups! Veuillez reesayer";
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUser({required String token}) async {
    try {
      var response =
          await RequestAssistant().httpGetRequest("users/profile/", token);
      if (response['success']) {
        _token = box.read('token');
        _user = UserModel.fromJson(response['response']);
        return _user!;
      } else {
        throw response['message'] ?? "Oups! Veuillez reesayer";
      }
    } catch (e) {
      rethrow;
    }
  }

  updateProfil(File file) async {
    final dio = dioRq.Dio();
    final formData = dioRq.FormData.fromMap({
      'photo': await dioRq.MultipartFile.fromFile(
        file.path,
      )
    });
    dio
        .post("https://server.triviaprive.com/api/profil-photo",
            data: formData,
            options:
                dioRq.Options(headers: {'Authorization': 'Bearer $_token'}))
        .then((value) {
      if (value.data['success']) {
        _user = UserModel.fromJson(value.data['response']);
        update();
      }
    }).catchError((onError) {
      print(onError.toString());
    });
  }
}
