import '/core/app_export.dart';
import '/widgets/tap_effect.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../disease_one_page/disease_one_page.dart';
import '../home_screen/home_screen.dart' as telehealth;
import '../profile_screen/profile_screen.dart';
import '../wallet/home_screen/home_screen.dart' as wallet;

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            60.height,
            Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup928,
                height: 100.v,
                width: 100.h,
                color: theme.primaryColor,
              ),
            ),
            30.height,
            ListView(
              // crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              // mainAxisSpacing: 8,
              // crossAxisSpacing: 8,
              // childAspectRatio: 1.0,
              shrinkWrap: true,
              children: [
                TapEffect(
                  onTap: () {
                    Get.to(() => const ProfileScreen());
                  },
                  child: selectWidget(icon: Icons.person, title: "Profil Santé")
                      .paddingAll(12),
                ),
                TapEffect(
                  onTap: () {
                    Get.to(() => DiseaseOnePage());
                    // Get.to(() => ProfileScreen());
                  },
                  child: selectWidget(
                          icon: Icons.newspaper, title: "Santé News & Astuce")
                      .paddingAll(12),
                ),
                TapEffect(
                  onTap: () {
                    Get.to(() => const wallet.HomeScreen());
                  },
                  child: selectWidget(
                          icon: Icons.wallet, title: "Portefeuille Santé")
                      .paddingAll(12),
                ),
                TapEffect(
                  onTap: () {
                    Get.to(() => const telehealth.HomeScreen());
                  },
                  child: selectWidget(
                          icon: Icons.medical_services, title: "Télé-medecine")
                      .paddingAll(12),
                ),
              ],
            ),
            // GridView.custom(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   gridDelegate: SliverWovenGridDelegate.count(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 8,
            //     crossAxisSpacing: 8,
            //     pattern: [
            //       WovenGridTile(1),
            //       WovenGridTile(
            //         5 / 7,
            //         crossAxisRatio: 0.9,
            //         alignment: AlignmentDirectional.centerEnd,
            //       ),
            //     ],
            //   ),
            //   childrenDelegate: SliverChildBuilderDelegate(
            //       (context, index) =>
            //           Container(color: Colors.red, child: Text("$index")),
            //       childCount: 30),
            // )
          ],
        ),
      ),
    );
  }

  Container selectWidget({required IconData icon, required String title}) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: AppDecoration.fillPink500.copyWith(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 34,
            ),
            20.width,
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
