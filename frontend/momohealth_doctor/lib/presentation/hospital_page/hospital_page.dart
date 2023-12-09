import '../hospital_page/widgets/hospitallist_item_widget.dart';
import 'controller/hospital_controller.dart';
import 'models/hospital_model.dart';
import 'models/hospitallist_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  HospitalPage({Key? key})
      : super(
          key: key,
        );

  HospitalController controller =
      Get.put(HospitalController(HospitalModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildHospitalList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHospitalList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 17.h,
        ),
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
            itemCount: controller
                .hospitalModelObj.value.hospitallistItemList.value.length,
            itemBuilder: (context, index) {
              HospitallistItemModel model = controller
                  .hospitalModelObj.value.hospitallistItemList.value[index];
              return HospitallistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
