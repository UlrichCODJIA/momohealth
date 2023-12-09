import '../../../models/transaction_model.dart';
import '../../../models/wallet_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../widgets/app_bar/appbar_title.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/tap_effect.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                height: 56.v,
                title: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      AppbarTitle(
                        text: "Health Wallet",
                        margin: EdgeInsets.only(right: 27.h),
                      ),
                    ],
                  ),
                ),
                actions: [
                  AppbarTrailingImage(
                    imagePath: ImageConstant.imgGroup915,
                    height: 50,
                    width: 60,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 6.v,
                      right: 6.h,
                    ),
                  ),
                ],
              ),
              12.height,

              Container(
                margin: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Votre compte",
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 18.fSize,
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                        )),
                    Text("${wallet.balance} XOF",
                        style: theme.textTheme.titleMedium!.copyWith(
                          fontSize: 32.fSize,
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.primary.withOpacity(1),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    10.width,
                    Expanded(
                      child: TapEffect(
                        onTap: () {
                          Get.dialog(Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Nouveau dépôt",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28),
                                  ).paddingSymmetric(vertical: 18),
                                  CustomTextFormField(
                                    fillColor: Colors.blue.withOpacity(.2),
                                    hintText: "Numero de téléphone",
                                    textInputType: TextInputType.phone,
                                  ).paddingOnly(bottom: 5),
                                  CustomTextFormField(
                                    fillColor: Colors.blue.withOpacity(.2),
                                    hintText: "Montant",
                                    textInputType: TextInputType.number,
                                  ).paddingOnly(bottom: 5),
                                  TapEffect(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: const Text(
                                          "Payer",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.grey)),
                          child: const Text(
                            "Dépôt",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: white),
                          ).center(),
                        ),
                      ),
                    ),
                    20.width,
                    Expanded(
                      child: TapEffect(
                        onTap: () {
                          Get.dialog(Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Nouveau dépôt",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28),
                                  ).paddingSymmetric(vertical: 18),
                                  CustomTextFormField(
                                    fillColor: Colors.blue.withOpacity(.2),
                                    hintText: "Numero de téléphone",
                                    textInputType: TextInputType.phone,
                                  ).paddingOnly(bottom: 5),
                                  CustomTextFormField(
                                    fillColor: Colors.blue.withOpacity(.2),
                                    hintText: "Montant",
                                    textInputType: TextInputType.number,
                                  ).paddingOnly(bottom: 5),
                                  TapEffect(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: const Text(
                                          "Payer",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: AppDecoration.fillPink.copyWith(
                              color: const Color(0xFFFF90BC),
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.grey)),
                          child: const Text(
                            "Envoie",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: white),
                          ).center(),
                        ),
                      ),
                    ),
                    10.width
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.8),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ]),
                  child: ListView(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Transactions récentes",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      12.height,
                      ...List.generate(transactionDummyData.length, (index) {
                        TransactionModel item = transactionDummyData[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: .1,
                                  blurRadius: .1,
                                  offset: Offset(1, 1),
                                ),
                              ]),
                          // color: Colors.blue.withOpacity(.2),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                // Container(
                                //   height: 54,
                                //   width: 54,
                                //   decoration: BoxDecoration(
                                //       shape: BoxShape.circle,
                                //       color: Colors.grey.withOpacity(.9)),
                                // ),
                                20.width,
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${item.transactionType}",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      6.height,
                                      Text(DateFormat(
                                              'E d MMM y, HH:mm', 'fr_FR')
                                          .format(item.createdAt!))
                                    ],
                                  ),
                                ),
                                10.width,
                                Text(
                                  "${item.amount} F",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          item.transactionType!.toLowerCase() ==
                                                  "debit"
                                              ? const Color(0xFFFF90BC)
                                              : theme.colorScheme.primary,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),

              // Row(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
              //         height: 80,
              //         decoration: BoxDecoration(
              //             color: Colors.blue,
              //             borderRadius: BorderRadius.circular(12),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey,
              //                 spreadRadius: 2,
              //                 blurRadius: 2,
              //                 offset: const Offset(0, 4),
              //               ),
              //             ]),
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Cash",
              //                 style: TextStyle(fontSize: 18),
              //               ),
              //               Text(
              //                 "2000 XOF",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w800, fontSize: 24),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
              //         height: 80,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(12),
              //             color: Colors.red,
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey,
              //                 spreadRadius: 2,
              //                 blurRadius: 2,
              //                 offset: const Offset(0, 4),
              //               ),
              //             ]),
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Cash",
              //                 style: TextStyle(fontSize: 18),
              //               ),
              //               Text(
              //                 "- 700 XOF",
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.w800, fontSize: 24),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
