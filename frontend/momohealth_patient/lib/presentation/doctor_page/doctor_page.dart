import '../doctor_page/widgets/doctorlist_item_widget.dart';
import 'controller/doctor_controller.dart';
import 'models/doctor_model.dart';
import 'models/doctorlist_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  DoctorPage({Key? key})
      : super(
          key: key,
        );

  DoctorController controller = Get.put(DoctorController(DoctorModel().obs));

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
              _buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 22.h,
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
            itemCount:
                controller.doctorModelObj.value.doctorlistItemList.value.length,
            itemBuilder: (context, index) {
              DoctorlistItemModel model = controller
                  .doctorModelObj.value.doctorlistItemList.value[index];
              return DoctorlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
