// // Dart imports:

// // Flutter imports:

// // Package imports:
// import 'package:get/get.dart';

// // Project imports:

// class CartController extends GetxController {
//   RxList<ProductModel> bags = <ProductModel>[].obs;
//   List<CartModel> cartList = <CartModel>[];
//   RxBool showPopup = false.obs;
//   RxBool showPopupLoad = false.obs;
//   RxString currentUrl = "".obs;
//   RxString factureUrl = "".obs;
//   RxString orderNum = "".obs;
//   RxString requestCode = "".obs;
//   RxString idCommercant = "".obs;
//   RxString nomCommercant = "".obs;
//   RxString fraisCommercant = "".obs;
//   RxString fraisTrivia = "".obs;
//   RxString countrySelected = "".obs;
//   RxString relayPointSelected = "".obs;
//   // userController.user!.pointLivraisonId.obs ?? "".obs;
//   RxString receverStatusSelected = "".obs;

//   RxInt selectContent = 0.obs;
//   int currentPage = 0;
//   RxBool isLoading = false.obs;
//   RxBool isReLoading = false.obs;

//   TextEditingController nomPerso = TextEditingController();
//   // TextEditingController prenomPerso = TextEditingController();
//   TextEditingController phonePerso = TextEditingController();
//   TextEditingController emailPerso = TextEditingController();
//   TextEditingController receverName = TextEditingController();
//   TextEditingController receverPhone = TextEditingController();

//   addBag(ProductModel bag) {
//     bags.add(bag);
//     box.write('cart', cartController.bags);
//   }

//   Future<bool> postSaveCart(
//       {required String commercantId, required String transactionId}) async {
//     try {
//       List<Map> produits = [];
//       // List produits = bags.map((element) => element.toJson()).toList();
//       for (ProductModel e in bags) {
//         produits.add({
//           "nom_produit": "${e.name}",
//           "prix": double.parse(e.price!).round(),
//           "prix_promo": double.parse(e.price!).round(),
//           "couleur": "${e.color}",
//           "taille": "${e.size}",
//           "lien_produit": "${e.link}",
//           "lien_image": "${e.img}",
//           "details_produit": "${e.details}",
//           "quantite": int.parse(e.quantity!)
//         });
//       }
//       var response = await RequestAssistant().httpPostRequest(
//           jsonType: true,
//           "commercants/$commercantId/paniers",
//           userController.token,
//           json.encode({
//             "id_transaction": "${DateTime.now().microsecond}",
//             "pays_livraison": countrySelected.value,
//             "frais_fournisseur": double.parse(fraisCommercant.value),
//             "frais_livraison": double.parse(fraisTrivia.value),
//             "point_livraison_id": int.parse(relayPointSelected.value),
//             "indicatif": userController.countryCode.value,
//             "nom": userController.user!.name,
//             "prenoms": userController.user!.name,
//             "contact": userController.user!.tel,
//             "email": userController.user!.email,
//             "type_recepteur": receverStatusSelected.value,
//             "nom_prenom_recepteur": receverName.text,
//             "produits": produits
//           }));

//       if (response['success']) {
//         factureUrl.value = response['response']['lien_facture'];
//         orderNum.value = response['response']['numero_panier'];
//         return true;
//       } else {
//         print(
//             "mon message d'erreur  est ------------------ ${response['message']}");
//         throw response['message'];
//       }
//     } catch (e) {
//       print("rethrow error is ${e.toString()}");
//       rethrow;
//     }
//   }

//   Future getCartList(
//       {int page = 0,
//       Map data = const {"statut_livraison": "", "from": "", "to": ""}}) async {
//     try {
//       page == 0 ? isReLoading(true) : isLoading(true);
//       update();
//       // {
//       //   "statut_livraison": "",
//       //   "from": "",
//       //   "to": ""
//       // }
//       var response = await RequestAssistant().httpPostRequest(
//           "${userController.user!.admin ? 'admins/' : ''}get-paniers?page=${page == 0 ? currentPage + 1 : page}",
//           userController.token,
//           data);
//       page == 0 ? isReLoading(false) : isLoading(false);
//       update();
//       print("data----------$data");
//       page != 0 ? cartList.clear() : null;
//       if (response['success']) {
//         // page != 0 ? cartList.clear() : null;
//         for (var cart in response['response']["data"]) {
//           // List<ProductModel> productList = [];
//           //   for (var prod in cart['produits']) {
//           //     productList.add(ProductModel.fromJson(prod)
//           //     );
//           //   }
//           cartList.add(CartModel.fromJson(cart));
//         }
//         var lastPage = response['response']['last_page'];
//         currentPage > lastPage
//             ? currentPage = lastPage
//             : currentPage = response['response']['current_page'];
//         // try {
//         //   cartList.sort((a, b) => DateTime.tryParse(b.createdAt!)!
//         //       .compareTo(DateTime.tryParse(a.createdAt!)!));
//         // } catch (e) {}
//         return cartList;
//       } else {
//         throw response['message'] ?? "Aucune donnée";
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }

//   updateStatut({required String cartID, required String statut}) async {
//     try {
//       Get.dialog(const LoadingWidget());
//       var response = await RequestAssistant().httpPatchRequest(
//           "admins/paniers/$cartID/update",
//           userController.token,
//           jsonEncode({"statut": statut}),
//           jsonType: true);
//       if (response['success']) {
//         print(response);
//         cartList
//                 .firstWhere((cart) => cart.id.toString() == cartID)
//                 .statutLivraison =
//             orderStatusList
//                 .firstWhere((orderStatus) => orderStatus.first == statut);
//         Get.back();
//         update();
//         customSnackBar(
//             isSuccess: true,
//             title: "Succes",
//             message: "Statut de la commande changé avec succes");
//       } else {
//         throw response['message'] ?? "Veuillez reessayer";
//       }
//     } catch (e) {
//       Get.back();
//       print("°°°°°°°°°°°°°°°$e");
//       customSnackBar(isSuccess: false, title: "Erreur", message: e.toString());
//       rethrow;
//     }
//   }

//   sendRecap({required String cartID}) async {
//     try {
//       Get.dialog(const LoadingWidget());
//       var response = await RequestAssistant().httpGetRequest(
//         "admins/send-email?id=$cartID",
//         userController.token,
//       );
//       if (response['success']) {
//         Get.back();
//         customSnackBar(
//             isSuccess: true, title: "Succes", message: response['message']);
//       } else {
//         throw response['message'] ?? "Veuillez reessayer";
//       }
//     } catch (e) {
//       Get.back();
//       print("°°°°°°°°°°°°°°°$e");
//       customSnackBar(isSuccess: false, title: "Erreur", message: e.toString());
//       rethrow;
//     }
//   }
// }
