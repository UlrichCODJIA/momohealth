import '../search_one_page/widgets/searchone_item_widget.dart';
import 'controller/search_one_controller.dart';
import 'models/search_one_model.dart';
import 'models/searchone_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchOnePage extends StatelessWidget {
  SearchOnePage({Key? key})
      : super(
          key: key,
        );

  SearchOneController controller =
      Get.put(SearchOneController(SearchOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 25.h),
                          child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_search".tr,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgActiveDoctorGray50,
                          height: 54.v,
                          width: 350.h,
                        ),
                        SizedBox(height: 25.v),
                        _buildSearchOne(),
                      ],
                    ),
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
  Widget _buildSearchOne() {
    return Padding(
      padding: EdgeInsets.only(right: 25.h),
      child: Obx(
        () => ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount:
              controller.searchOneModelObj.value.searchoneItemList.value.length,
          itemBuilder: (context, index) {
            SearchoneItemModel model = controller
                .searchOneModelObj.value.searchoneItemList.value[index];
            return SearchoneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
