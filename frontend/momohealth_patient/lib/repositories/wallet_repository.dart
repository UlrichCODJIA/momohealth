import 'dart:io';

import '../models/transaction_model.dart';
import '../widgets/loading_widget.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

import '../core/request/request_assistant.dart';
import 'package:dio/dio.dart' as dioRq;
import '../main.dart';
import '../models/user_model.dart';

class WalletRepository extends GetxController {
  String? _token;
  UserModel? _user;
  RxDouble balance = 120.00.obs;

  // TextEditingController textEditingController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  UserModel? get user {
    return _user;
  }

  String get token {
    return _token ?? "";
  }

  // Exemple de données factices pour trois éléments TransactionModel
  RxList<TransactionModel> transactionDummyData = [
    TransactionModel(
      transactionId: '1',
      walletId: 'wallet_123',
      amount: '50.00',
      transactionType: 'Credit',
      description: 'Received payment',
      createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
    ),
    TransactionModel(
      transactionId: '2',
      walletId: 'wallet_456',
      amount: '30.00',
      transactionType: 'Debit',
      description: 'Purchase at store',
      createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
    ),
    TransactionModel(
      transactionId: '3',
      walletId: 'wallet_789',
      amount: '100.00',
      transactionType: 'Credit',
      description: 'Salary deposit',
      createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
    ),
  ].obs;

  Future<dynamic> deposit() async {
    try {
      Get.dialog(const LoadingWidget());
      var response = await RequestAssistant().httpPostRequest(
          "wallet/deposit/", "", {"amount": amountController.text.trim()});
      if (response['success']) {
        Get.back();
        Get.back();
        // _user = UserModel.fromJson(response['response']['user']);
        // //  {"success": true, "message": "Compte créé avec succes"};
        balance.value =
            balance.value + double.parse(amountController.text.trim());
        transactionDummyData.add(
          TransactionModel(
            transactionId: DateTime.now().toIso8601String(),
            walletId: 'wallet_123',
            amount: double.parse(amountController.text.trim()).toString(),
            transactionType: 'Credit',
            description: 'Received payment',
            createdAt: DateTime.now(),
          ),
        );
        update();

        return true;
      } else {
        throw response['error'] ?? "";
      }
    } catch (e) {
      Get.back();
      rethrow;
    }
  }

  Future<Map> login({required Map data}) async {
    try {
      var response =
          await RequestAssistant().httpPostRequest("login", "", data);
      if (response['success']) {
        _token = response['response']['access_token'];
        box.write('token', _token);
        _user = UserModel.fromJson(response['response']['user']);
        return {"success": true, "message": "Authentification reussie"};
      } else {
        throw response['activation'] ?? response['message'];
      }
    } catch (e) {
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
      var response = await RequestAssistant().httpGetRequest("me", token);
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
