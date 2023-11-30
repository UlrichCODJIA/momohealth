import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../help_page/widgets/coronavirusinfo_item_widget.dart';
import 'controller/help_controller.dart';
import 'models/coronavirusinfo_item_model.dart';
import 'models/help_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  HelpPage({Key? key})
      : super(
          key: key,
        );

  HelpController controller = Get.put(HelpController(HelpModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  children: [
                    CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr,
                      contentPadding: EdgeInsets.only(
                        top: 14.v,
                        right: 30.h,
                        bottom: 14.v,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildCoronavirusInfo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 16.v, bottom: 16.v),
            onTap: () {
              Get.back();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Prescription".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildCoronavirusInfo() {
    return Obx(
      () => ListView.builder(
        shrinkWrap: true,
        itemCount:
            controller.helpModelObj.value.coronavirusinfoItemList.value.length,
        itemBuilder: (context, index) {
          CoronavirusinfoItemModel model = controller
              .helpModelObj.value.coronavirusinfoItemList.value[index];
          return CoronavirusinfoItemWidget(
            model,
          );
        },
      ),
    );
  }
}
