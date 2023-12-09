import '../get_schedule_screen/get_schedule_screen.dart';
import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_search_view.dart';
import 'package:flutter/material.dart' hide SearchController;

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

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
                            autofocus: false,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        _buildSearch(),
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
  Widget _buildSearch() {
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
              controller.searchModelObj.value.searchItemList.value.length,
          itemBuilder: (context, index) {
            SearchItemModel model =
                controller.searchModelObj.value.searchItemList.value[index];
            return InkWell(
              onTap: () {
                Get.to(const GetScheduleScreen());
              },
              child: SearchItemWidget(
                model,
              ),
            );
          },
        ),
      ),
    );
  }
}
