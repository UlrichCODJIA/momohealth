import '../google_calender_bottomsheet/widgets/googlecalenderlist_item_widget.dart';
import 'controller/google_calender_controller.dart';
import 'models/googlecalenderlist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class GoogleCalenderBottomsheet extends StatelessWidget {
  GoogleCalenderBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  GoogleCalenderController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.2,
              child: SizedBox(
                width: 32.h,
                child: Divider(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.42),
                ),
              ),
            ),
            SizedBox(height: 6.v),
            _buildDailyPillTaskRow(),
            SizedBox(height: 30.v),
            _buildGoogleCalenderList(),
            SizedBox(height: 37.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDailyPillTaskRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_daily_pill_task".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup756,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoogleCalenderList() {
    return Obx(
      () => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: controller.googleCalenderModelObj.value
            .googlecalenderlistItemList.value.length,
        itemBuilder: (context, index) {
          GooglecalenderlistItemModel model = controller.googleCalenderModelObj
              .value.googlecalenderlistItemList.value[index];
          return GooglecalenderlistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
