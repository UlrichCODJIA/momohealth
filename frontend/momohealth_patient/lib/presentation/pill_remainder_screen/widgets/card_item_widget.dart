import '../controller/pill_remainder_controller.dart';
import '../models/card_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  var controller = Get.find<PillRemainderController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.outlineOnErrorContainer2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: cardItemModelObj.acarbose!.value,
                height: 80.adaptSize,
                width: 80.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 17.v,
                bottom: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          cardItemModelObj.acarbose1!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 4.v,
                          ),
                          child: Obx(
                            () => Text(
                              cardItemModelObj.weight!.value,
                              style:
                                  CustomTextStyles.labelMediumOnErrorContainer,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: 215.h,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup752,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 1.v,
                            bottom: 1.v,
                          ),
                          child: Obx(
                            () => Text(
                              cardItemModelObj.time!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup753,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 2.v,
                          ),
                          child: Obx(
                            () => Text(
                              cardItemModelObj.everyDay!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Opacity(
                          opacity: 0.6,
                          child: Obx(
                            () => CustomImageView(
                              imagePath: cardItemModelObj.am!.value,
                              height: 17.v,
                              width: 14.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
