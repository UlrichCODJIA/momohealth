import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingImage extends StatelessWidget {
  AppbarTrailingImage(
      {Key? key,
      this.imagePath,
      this.margin,
      this.onTap,
      this.height,
      this.width})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  double? height, width;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: height ?? 12.v,
          width: width ?? 6.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
