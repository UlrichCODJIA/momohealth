import 'controller/ambulance_controller.dart';
import 'models/ambulance_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AmbulancePage extends StatelessWidget {
  AmbulancePage({Key? key})
      : super(
          key: key,
        );

  AmbulanceController controller =
      Get.put(AmbulanceController(AmbulanceModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup314,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.white.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup314,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 57.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 453.v,
                        width: 210.h,
                        margin: EdgeInsets.only(left: 23.h),
                        padding: EdgeInsets.only(
                          left: 51.h,
                          top: 167.v,
                          right: 51.h,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup15,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(15.h),
                          decoration: IconButtonStyleHelper.fillPrimaryTL20,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMyLocationPin,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.v),
                      _buildUserProfile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Row(
      children: [
        Container(
          height: 60.adaptSize,
          width: 60.adaptSize,
          decoration: AppDecoration.fillBlue5002.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder30,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle22,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 5.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_mike_echelpoels".tr,
                style: theme.textTheme.titleSmall,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "msg_ambulance_driver".tr,
                  style: CustomTextStyles.labelMediumOnErrorContainer_1,
                ),
              ),
              SizedBox(height: 6.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_5_0".tr,
                        style: CustomTextStyles.labelLargeOnErrorContainer_2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL27,
            child: CustomImageView(
              imagePath: ImageConstant.imgCallBtn,
            ),
          ),
        ),
      ],
    );
  }
}
