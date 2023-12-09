import '../controller/search_one_controller.dart';
import '../models/searchone_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchoneItemWidget extends StatelessWidget {
  SearchoneItemWidget(
    this.searchoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchoneItemModel searchoneItemModelObj;

  var controller = Get.find<SearchOneController>();

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
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup1,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          searchoneItemModelObj.drHarryKarlo!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Opacity(
                        opacity: 0.4,
                        child: Obx(
                          () => Text(
                            searchoneItemModelObj.time!.value,
                            style:
                                CustomTextStyles.labelLargeOnErrorContainer_6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Obx(
                  () => CustomImageView(
                    imagePath: searchoneItemModelObj.drHarryKarlo1!.value,
                    height: 16.v,
                    width: 17.h,
                    margin: EdgeInsets.symmetric(vertical: 14.v),
                  ),
                ),
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
                        searchoneItemModelObj.fortyNine!.value,
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
