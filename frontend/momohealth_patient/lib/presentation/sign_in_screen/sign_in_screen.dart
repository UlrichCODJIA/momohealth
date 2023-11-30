import '../dashboard/dashboard_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';
import 'controller/sign_in_controller.dart';
import '/core/app_export.dart';
import '/core/utils/validation_functions.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  SignInController controller = SignInController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 49.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 59.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup928,
                  height: 41.v,
                  width: 44.h,
                ),
                Text(
                  "lbl_momohealth".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 87.v),
                _buildSignInForm(),
                SizedBox(height: 25.v),
                Text(
                  "msg_forgot_password".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 50.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      child: Text(
                        "msg_don_t_have_any_account".tr,
                        style: CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpTwoScreen());
                        },
                        child: Text(
                          "lbl_sign_up".tr,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInForm() {
    return Container(
      padding: EdgeInsets.all(1.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 35.v),
          Text(
            "lbl_sign_in".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 21.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "lbl_email".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_alexandar_gmail_com".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(
                "lbl_password".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.passwordController,
                textInputAction: TextInputAction.done,
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(30.h, 19.v, 15.h, 19.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 14.v,
                      width: 18.h,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 45.v,
                ),
                obscureText: controller.isShowPassword.value,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "lbl_sign_in".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryBL25,
            onPressed: () {
              Get.to(() => const DashBoardScreen());
            },
          ),
        ],
      ),
    );
  }
}
