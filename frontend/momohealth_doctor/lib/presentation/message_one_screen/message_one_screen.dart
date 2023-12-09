import '../message_one_screen/widgets/messageone_item_widget.dart';
import 'controller/message_one_controller.dart';
import 'models/messageone_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/appbar_trailing_iconbutton.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageOneScreen extends GetWidget<MessageOneController> {
  const MessageOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                ),
              ),
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgActive,
                height: 50.v,
                width: 350.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 23.v),
              _buildMessageOne(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 58.v,
      title: AppbarSubtitleOne(
        text: "lbl_chat".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 25.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup756,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessageOne() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Obx(
          () => ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: controller
                .messageOneModelObj.value.messageoneItemList.value.length,
            itemBuilder: (context, index) {
              MessageoneItemModel model = controller
                  .messageOneModelObj.value.messageoneItemList.value[index];
              return MessageoneItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
