import '/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(15.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5003,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPrimaryTL27 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue300,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA20001,
        borderRadius: BorderRadius.circular(13.h),
      );
  static BoxDecoration get fillOnPrimaryContainerTL10 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillOnPrimaryContainerTL25 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillRedATL30 => BoxDecoration(
        color: appTheme.redA200,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillLightBlueTL15 => BoxDecoration(
        color: appTheme.lightBlue300,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red400,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA200,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillRedATL13 => BoxDecoration(
        color: appTheme.redA200,
        borderRadius: BorderRadius.circular(13.h),
      );
}
