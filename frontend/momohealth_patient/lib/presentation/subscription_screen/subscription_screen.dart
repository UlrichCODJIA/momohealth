import '../subscription_screen/widgets/freeambulancelist1_item_widget.dart';
import '../subscription_screen/widgets/freeambulancelist2_item_widget.dart';
import '../subscription_screen/widgets/freeambulancelist_item_widget.dart';
import 'controller/subscription_controller.dart';
import 'models/freeambulancelist1_item_model.dart';
import 'models/freeambulancelist2_item_model.dart';
import 'models/freeambulancelist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  SubscriptionController controller = Get.put(SubscriptionController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      SizedBox(
                          width: double.maxFinite,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 52.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                  height: 145.v,
                                                  width: 199.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        _buildMonthlySubscription(),
                                                        _buildMostPopularButton()
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 199.h,
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder7),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.1,
                                                            child: SizedBox(
                                                                width: 193.h,
                                                                child: Divider(
                                                                    indent:
                                                                        3.h))),
                                                        SizedBox(height: 13.v),
                                                        _buildFreeAmbulanceList(),
                                                        SizedBox(height: 4.v),
                                                        _buildFreeLifeInsuranceInput(),
                                                        SizedBox(height: 14.v),
                                                        _buildClaimOfferButton(),
                                                        SizedBox(height: 15.v)
                                                      ])))
                                        ])),
                                Column(children: [
                                  SizedBox(
                                      height: 183.v,
                                      width: 251.h,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 67.h,
                                                            vertical: 25.v),
                                                    decoration: AppDecoration
                                                        .white
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          SizedBox(
                                                              height: 17.v),
                                                          Text("lbl_monthly".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge),
                                                          Text("lbl_99".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .displayMedium)
                                                        ]))),
                                            _buildMostPopular()
                                          ])),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.h, vertical: 18.v),
                                      decoration: AppDecoration.white.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            _buildFreeAmbulanceList1(),
                                            SizedBox(height: 18.v),
                                            _buildClaimOffer()
                                          ]))
                                ]),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 52.v),
                                    child: Column(children: [
                                      SizedBox(
                                          height: 145.v,
                                          width: 199.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                _buildNinetyThree(
                                                    monthly: "lbl_monthly".tr,
                                                    price: "lbl_99".tr),
                                                _buildMostPopularButton1()
                                              ])),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.h),
                                          decoration: AppDecoration.white
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Opacity(
                                                    opacity: 0.1,
                                                    child: SizedBox(
                                                        width: 190.h,
                                                        child:
                                                            const Divider())),
                                                SizedBox(height: 13.v),
                                                _buildFreeAmbulanceList2(),
                                                SizedBox(height: 14.v),
                                                _buildClaimOfferButton1(),
                                                SizedBox(height: 15.v)
                                              ]))
                                    ]))
                              ])),
                      SizedBox(height: 28.v),
                      Text("lbl_payment_notice".tr,
                          style: CustomTextStyles.titleSmallBlack900),
                      SizedBox(height: 10.v),
                      Opacity(
                          opacity: 0.6,
                          child: SizedBox(
                              width: 258.h,
                              child: Text("msg_balance_must_be".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodySmallBlack900
                                      .copyWith(height: 1.50))))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 14.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_subscription".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildMonthlySubscription() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 15.v),
            child: IntrinsicWidth(
                child: Padding(
                    padding: EdgeInsets.only(right: 168.h),
                    child: _buildNinetyThree(
                        monthly: "lbl_monthly".tr, price: "lbl_99".tr)))));
  }

  /// Section Widget
  Widget _buildMostPopularButton() {
    return CustomElevatedButton(
        height: 27.v,
        width: 112.h,
        text: "lbl_most_popular".tr,
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.labelSmallOnPrimaryContainer,
        alignment: Alignment.topLeft);
  }

  /// Section Widget
  Widget _buildFreeAmbulanceList() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 168.h),
            child: Obx(() => ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 4.v);
                },
                itemCount: controller.subscriptionModelObj.value
                    .freeambulancelistItemList.value.length,
                itemBuilder: (context, index) {
                  FreeambulancelistItemModel model = controller
                      .subscriptionModelObj
                      .value
                      .freeambulancelistItemList
                      .value[index];
                  return FreeambulancelistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildFreeLifeInsuranceInput() {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: CustomTextFormField(
            width: 156.h,
            controller: controller.freeLifeInsuranceInputController,
            hintText: "msg_free_life_insurance".tr,
            hintStyle: theme.textTheme.labelSmall!,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(11.h, 11.v, 7.h, 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup497,
                    height: 9.adaptSize,
                    width: 9.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 31.v),
            contentPadding: EdgeInsets.only(top: 9.v, right: 28.h, bottom: 9.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray));
  }

  /// Section Widget
  Widget _buildClaimOfferButton() {
    return CustomElevatedButton(
        height: 36.v,
        width: 167.h,
        text: "lbl_claim_offer".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL7,
        buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildMostPopular() {
    return CustomElevatedButton(
        height: 34.v,
        width: 141.h,
        text: "lbl_most_popular".tr,
        buttonStyle: CustomButtonStyles.fillLightBlueTL17,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer_1,
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildFreeAmbulanceList1() {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Obx(() => ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                  opacity: 0.1,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.0.v),
                      child: SizedBox(
                          width: 240.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(0.39)))));
            },
            itemCount: controller.subscriptionModelObj.value
                .freeambulancelist1ItemList.value.length,
            itemBuilder: (context, index) {
              Freeambulancelist1ItemModel model = controller
                  .subscriptionModelObj
                  .value
                  .freeambulancelist1ItemList
                  .value[index];
              return Freeambulancelist1ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildClaimOffer() {
    return CustomElevatedButton(
        height: 46.v, width: 211.h, text: "lbl_claim_offer".tr);
  }

  /// Section Widget
  Widget _buildMostPopularButton1() {
    return CustomElevatedButton(
        height: 27.v,
        width: 112.h,
        text: "lbl_most_popular".tr,
        buttonStyle: CustomButtonStyles.fillLightBlue,
        buttonTextStyle: CustomTextStyles.labelSmallOnPrimaryContainer,
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildFreeAmbulanceList2() {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 15.h),
        child: Obx(() => ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 4.v);
            },
            itemCount: controller.subscriptionModelObj.value
                .freeambulancelist2ItemList.value.length,
            itemBuilder: (context, index) {
              Freeambulancelist2ItemModel model = controller
                  .subscriptionModelObj
                  .value
                  .freeambulancelist2ItemList
                  .value[index];
              return Freeambulancelist2ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildClaimOfferButton1() {
    return CustomElevatedButton(
        height: 36.v,
        width: 167.h,
        text: "lbl_claim_offer".tr,
        buttonStyle: CustomButtonStyles.fillPrimaryTL7,
        buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer);
  }

  /// Common widget
  Widget _buildNinetyThree({
    required String monthly,
    required String price,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 22.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              Text(monthly,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge!.copyWith(
                      color:
                          theme.colorScheme.onErrorContainer.withOpacity(1))),
              Text(price,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displaySmall!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
