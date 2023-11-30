import 'package:flutter/material.dart';
import '/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue400,
      );
  static BoxDecoration get fillBlue100 => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlue10001 => BoxDecoration(
        color: appTheme.blue10001,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue500 => BoxDecoration(
        color: appTheme.blue500,
      );
  static BoxDecoration get fillBlue5001 => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlue5002 => BoxDecoration(
        color: appTheme.blue5002,
      );
  static BoxDecoration get fillBlue5003 => BoxDecoration(
        color: appTheme.blue5003,
      );
  static BoxDecoration get fillBlue5004 => BoxDecoration(
        color: appTheme.blue5004,
      );
  static BoxDecoration get fillBlue5006 => BoxDecoration(
        color: appTheme.blue5006,
      );
  static BoxDecoration get fillBlue5007 => BoxDecoration(
        color: appTheme.blue5007,
      );
  static BoxDecoration get fillBlue5008 => BoxDecoration(
        color: appTheme.blue5008,
      );
  static BoxDecoration get fillBlue5009 => BoxDecoration(
        color: appTheme.blue5009,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillCyan40001 => BoxDecoration(
        color: appTheme.cyan40001,
      );
  static BoxDecoration get fillCyan500 => BoxDecoration(
        color: appTheme.cyan500,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green200,
      );
  static BoxDecoration get fillGreen50001 => BoxDecoration(
        color: appTheme.green50001,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue300,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA200,
      );
  static BoxDecoration get fillLightGreenA => BoxDecoration(
        color: appTheme.lightGreenA700,
      );
  static BoxDecoration get fillLightblue50 => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.53),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50,
      );
  static BoxDecoration get fillPink500 => BoxDecoration(
        color: appTheme.pink500,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple5001,
      );
  static BoxDecoration get fillPurple50 => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: appTheme.red600,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA100,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow800,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.amber30033,
            appTheme.pink30000,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.blue70033,
            appTheme.deepOrangeA20000,
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeAToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.deepOrangeA10033,
            appTheme.pink30000,
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.deepOrange200.withOpacity(0.2),
            appTheme.redA10000,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.indigoA20033,
            appTheme.deepOrange30000,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnErrorContainer =>
      BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.55),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
            theme.colorScheme.onErrorContainer.withOpacity(0.6),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnErrorContainer1 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.55),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
            theme.colorScheme.onErrorContainer.withOpacity(0.6),
          ],
        ),
      );
  static BoxDecoration get gradientRedToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.red60001.withOpacity(0.2),
            appTheme.pink30000,
          ],
        ),
      );
  static BoxDecoration get gradientRedToPink30000 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.red4003301,
            appTheme.pink30000,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.red40033,
            appTheme.red200.withOpacity(0),
          ],
        ),
      );

  // Gray decorations
  static BoxDecoration get gray => BoxDecoration(
        color: appTheme.gray5003,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray10013,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              9.93,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray5003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray5003 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray5003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.green800.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        color: appTheme.lightBlue300,
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlue300.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer2 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(0.03),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer => const BoxDecoration();
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: appTheme.red50,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: appTheme.gray5003,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              12,
            ),
          ),
        ],
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder41 => BorderRadius.circular(
        41.h,
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL15 => BorderRadius.vertical(
        bottom: Radius.circular(15.h),
      );
  static BorderRadius get customBorderBL25 => BorderRadius.vertical(
        bottom: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL101 => BorderRadius.horizontal(
        left: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.horizontal(
        left: Radius.circular(15.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder114 => BorderRadius.circular(
        114.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
  static BorderRadius get roundedBorder71 => BorderRadius.circular(
        71.h,
      );
  static BorderRadius get roundedBorder99 => BorderRadius.circular(
        99.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
