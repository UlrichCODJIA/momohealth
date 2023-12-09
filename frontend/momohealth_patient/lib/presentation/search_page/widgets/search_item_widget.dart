import 'package:nb_utils/nb_utils.dart';

import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              children: [
                Container(
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Obx(
                    () => CustomImageView(
                      imagePath: searchItemModelObj.drBrianHanner!.value,
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      alignment: Alignment.topCenter,
                    ).cornerRadiusWithClipRRect(20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          searchItemModelObj.drBrianHanner1!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.4,
                        child: Text(
                          "Généraliste",
                          style: CustomTextStyles.labelLargeOnErrorContainer_6,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Obx(
                //   () => CustomImageView(
                //     imagePath: searchItemModelObj.drBrianHanner2!.value,
                //     height: 16.v,
                //     width: 17.h,
                //     margin: EdgeInsets.symmetric(vertical: 14.v),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 54.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 5,
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Obx(
                      () => Text(
                        searchItemModelObj.fortyNine!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
