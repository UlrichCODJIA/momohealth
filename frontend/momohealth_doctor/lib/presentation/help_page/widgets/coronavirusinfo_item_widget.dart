import '../controller/help_controller.dart';
import '../models/coronavirusinfo_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoronavirusinfoItemWidget extends StatelessWidget {
  CoronavirusinfoItemWidget(
    this.coronavirusinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoronavirusinfoItemModel coronavirusinfoItemModelObj;

  var controller = Get.find<HelpController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(top: 2.v),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: 231.h,
                  child: Text(
                    "msg_what_are_coronaviruses".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: (coronavirusinfoItemModelObj.isSelected?.value ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 5.v,
                  width: 10.h,
                  margin: EdgeInsets.only(
                    left: 54.h,
                    top: 8.v,
                    bottom: 28.v,
                  ),
                )
              : CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 5.v,
                  width: 10.h,
                  margin: EdgeInsets.only(
                    left: 54.h,
                    top: 8.v,
                    bottom: 28.v,
                  ),
                ),
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.v),
              padding: EdgeInsets.only(bottom: 68.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 129.v,
                      width: 275.h,
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      decoration: AppDecoration.fillDeepPurple.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroupPrimary,
                        height: 119.v,
                        width: 222.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Container(
                      width: 273.h,
                      margin: EdgeInsets.only(
                        top: 75.v,
                        right: 22.h,
                      ),
                      child: Text(
                        "msg_coronaviruses_cov".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeOnErrorContainer_3
                            .copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {
            coronavirusinfoItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
