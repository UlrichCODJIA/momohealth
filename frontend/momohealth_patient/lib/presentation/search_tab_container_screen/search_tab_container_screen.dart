import 'controller/search_tab_container_controller.dart';
import '/core/app_export.dart';
import '/presentation/search_page/search_page.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchTabContainerScreen extends StatefulWidget {
  const SearchTabContainerScreen({Key? key}) : super(key: key);

  @override
  State<SearchTabContainerScreen> createState() =>
      _SearchTabContainerScreenState();
}

class _SearchTabContainerScreenState extends State<SearchTabContainerScreen> {
  SearchTabContainerController controller =
      Get.put(SearchTabContainerController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      appBar: _buildAppBar(),
      body: SizedBox(
          width: double.maxFinite,
          child: GetBuilder(
              init: controller,
              builder: (control) {
                return Column(children: [
                  SizedBox(height: 14.v),
                  _buildTabview(control),
                  Expanded(child: SearchPage())
                ]);
              })),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_search".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildTabview(control) {
    return Container(
        height: 109.v,
        // width: 333.h,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: controller.specialityList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var speciality = controller.specialityList[index];
              return GestureDetector(
                onTap: () {
                  controller.specialitySelected.value = index;
                },
                child: Obx(() {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      if (controller.specialitySelected.value == index)
                        Opacity(
                            opacity: 0.3,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 30.v,
                                    width: 76.h,
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.blue400.withOpacity(0.46),
                                        borderRadius:
                                            BorderRadius.circular(10.h))))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.all(13.h),
                              width: 100.h,
                              decoration: AppDecoration.fillBlue.copyWith(
                                  color: controller.specialitySelected == index
                                      ? null
                                      : Colors.white,
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: speciality.imgPath,
                                        height: 37.v,
                                        width: 29.h,
                                        color: Colors.black,
                                        margin: EdgeInsets.only(top: 6.v)),
                                    Padding(
                                        padding: EdgeInsets.only(top: 8.v),
                                        child: Text(
                                          speciality.title,
                                          style: TextStyle(fontSize: 12.h),
                                        ))
                                  ])))
                    ]),
                  );
                }),
              );
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
