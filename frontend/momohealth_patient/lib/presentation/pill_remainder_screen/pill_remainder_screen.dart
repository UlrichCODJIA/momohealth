import '../pill_remainder_screen/widgets/card_item_widget.dart';
import 'controller/pill_remainder_controller.dart';
import 'models/card_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PillRemainderScreen extends GetWidget<PillRemainderController> {
  const PillRemainderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                height: 723.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: 41.v),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_today".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 3.v),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_thu_21_jan".tr,
                                        style: CustomTextStyles
                                            .titleMediumOnErrorContainer))
                              ]))),
                  _buildCard()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_pill_reminder".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildCard() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 121.v),
            child: Obx(() => ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15.v);
                },
                itemCount: controller
                    .pillRemainderModelObj.value.cardItemList.value.length,
                itemBuilder: (context, index) {
                  CardItemModel model = controller
                      .pillRemainderModelObj.value.cardItemList.value[index];
                  return CardItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
