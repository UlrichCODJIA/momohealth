import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../dashboard/dashboard_screen.dart';
import '../sign_in_screen/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => SignInScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgGroup928,
              height: 82.v,
              width: 88.h,
            ),
            12.height,
            Text(
              "lbl_momohealth".tr,
              style: theme.textTheme.headlineMedium!.copyWith(fontSize: 24.h),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
