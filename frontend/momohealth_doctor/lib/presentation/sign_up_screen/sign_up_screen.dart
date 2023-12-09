import '../sign_in_screen/sign_in_screen.dart';
import 'controller/sign_up_controller.dart';
import '/core/app_export.dart';
import '/core/utils/validation_functions.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  SignUpController controller = SignUpController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: theme.colorScheme.primary,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 48.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 60.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup928,
                    height: 41.v,
                    width: 44.h,
                  ),
                  Text(
                    "lbl_momohealth".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 86.v),
                  Container(
                    padding: EdgeInsets.all(1.h),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 34.v),
                        Text(
                          "lbl_sign_up".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 34.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "Téléphone",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildEmailSection(),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "Prenoms".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildUserNameSection(),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "Nom".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildUserLastNameSection(),
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
                        _buildPasswordSection(),
                        SizedBox(height: 30.v),
                        _buildNextButtonSection(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "msg_already_have_an".tr,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainer_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => SignInScreen());
                          },
                          child: Text(
                            "lbl_sign_in".tr,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: CustomTextFormField(
        controller: controller.emailSectionController,
        hintText: "6100000",
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserNameSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: CustomTextFormField(
        controller: controller.userNameSectionController,
        hintText: "John".tr,
      ),
    );
  }

  Widget _buildUserLastNameSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: CustomTextFormField(
        controller: controller.userLastNameSectionController,
        hintText: "Doe".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordSectionController,
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
    );
  }

  /// Section Widget
  Widget _buildNextButtonSection() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryBL25,
    );
  }
}
