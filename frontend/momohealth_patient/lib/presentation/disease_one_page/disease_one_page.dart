import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/diseaseone_item_widget.dart';
import '../info_list_screen/info_list_screen.dart';
import 'controller/disease_one_controller.dart';
import 'models/disease_one_model.dart';
import 'models/diseaseone_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class InfoCategoryPage extends StatelessWidget {
  InfoCategoryPage({Key? key})
      : super(
          key: key,
        );

  InfoCategoryController controller = Get.put(InfoCategoryController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.gray,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildDiseaseOne(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 15.v, bottom: 17.v),
            onTap: () {
              Get.back();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Info Santé".toUpperCase()));
  }

  /// Section Widget
  Widget _buildDiseaseOne() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 190.v,
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: controller.infoCategoryListObj.value.length,
            itemBuilder: (context, index) {
              InfoCategoryModel model =
                  controller.infoCategoryListObj.value[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => const InfoListScreen());
                },
                child: InfoCategoryItemWidget(
                  model,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
