import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray5003,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onErrorContainer.withOpacity(0.39),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.56),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.42),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 46.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 36.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.53),
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 9.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 23.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF508BFF),
    primaryContainer: Color(0XFFFF0072),
    secondaryContainer: Color(0XFFFFCBBE),

    // Error colors
    errorContainer: Color(0XFFF82363),
    onError: Color(0XFF458FFD),
    onErrorContainer: Color(0X7E001133),

    // On colors(text colors)
    onPrimary: Color(0X05001829),
    onPrimaryContainer: Color(0XA2FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => Color(0XFFFFEAA6);
  Color get amber30033 => Color(0X33FFD959);
  Color get amberA200 => Color(0XFFFFD93B);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFD2DEFF);
  Color get blue10001 => Color(0XFFC5E3FF);
  Color get blue400 => Color(0XFF45A3FF);
  Color get blue50 => Color(0XFFE9F0FF);
  Color get blue500 => Color(0XFF19A8FE);
  Color get blue5001 => Color(0XFFD6EBFF);
  Color get blue5002 => Color(0XFFDDE4FF);
  Color get blue5003 => Color(0XFFECF8FF);
  Color get blue5004 => Color(0XFFD6E1FF);
  Color get blue5005 => Color(0XFFE8F0FF);
  Color get blue5006 => Color(0XFFE0EFFF);
  Color get blue5007 => Color(0XFFE6F6FF);
  Color get blue5008 => Color(0XFFD7E2FF);
  Color get blue5009 => Color(0XFFE7EFFF);
  Color get blue700 => Color(0XFF1B88C2);
  Color get blue70033 => Color(0X330A65D9);
  Color get blueA200 => Color(0XFF518CFF);
  Color get blueA20047 => Color(0X47518CFE);

  // BlueGray
  Color get blueGray10013 => Color(0X13D4D4D4);

  // Cyan
  Color get cyan300 => Color(0XFF42BBCC);
  Color get cyan400 => Color(0XFF2BD9D3);
  Color get cyan40001 => Color(0XFF2BD9D2);
  Color get cyan50 => Color(0XFFD7F7FF);
  Color get cyan500 => Color(0XFF0AD4E4);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFBEAA);
  Color get deepOrange10001 => Color(0XFFFFC0A4);
  Color get deepOrange200 => Color(0XFFF7B594);
  Color get deepOrange300 => Color(0XFFFB9A53);
  Color get deepOrange30000 => Color(0X00FF9368);
  Color get deepOrange30001 => Color(0XFFFE7762);
  Color get deepOrangeA10033 => Color(0X33FFA87A);
  Color get deepOrangeA20000 => Color(0X00FF653E);

  // DeepPurple
  Color get deepPurple400 => Color(0XFF864A9D);
  Color get deepPurpleA200 => Color(0XFF813DF1);

  // Gray
  Color get gray100 => Color(0XFFF6F7F9);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray50 => Color(0XFFFEF2FF);
  Color get gray500 => Color(0XFFAC886F);
  Color get gray5001 => Color(0XFFF9FBFF);
  Color get gray5002 => Color(0XFFFFF2FF);
  Color get gray5003 => Color(0XFFF8FAFF);

  // Green
  Color get green200 => Color(0XFF9BE49E);
  Color get green500 => Color(0XFF33C364);
  Color get green50001 => Color(0XFF5BCD4D);
  Color get green800 => Color(0XFF00A810);
  Color get greenA700 => Color(0XFF09B160);
  Color get greenA70001 => Color(0XFF0AB161);

  // Indigo
  Color get indigo300 => Color(0XFF7871D9);
  Color get indigoA20033 => Color(0X33606AEA);

  // LightBlue
  Color get lightBlue300 => Color(0XFF54C1FB);
  Color get lightBlue50 => Color(0XFFD7ECFF);
  Color get lightBlueA200 => Color(0XFF45C7FD);

  // LightGreen
  Color get lightGreenA700 => Color(0XFF64DC34);

  // Orange
  Color get orange400 => Color(0XFFFFA31A);

  // Pink
  Color get pink300 => Color(0XFFFF6680);
  Color get pink30000 => Color(0X00FF6580);
  Color get pink50 => Color(0XFFFFE1EB);
  Color get pink500 => Color(0XFFF01283);

  // Purple
  Color get purple50 => Color(0XFFFBE3FF);
  Color get purple5001 => Color(0XFFFADFFF);

  // Red
  Color get red100 => Color(0XFFFFD2E2);
  Color get red200 => Color(0XFFF79595);
  Color get red400 => Color(0XFFF45353);
  Color get red40033 => Color(0X33EE6161);
  Color get red4003301 => Color(0X33E65151);
  Color get red50 => Color(0XFFFFF5F0);
  Color get red600 => Color(0XFFE5373C);
  Color get red60001 => Color(0XFFEF314C);
  Color get redA10000 => Color(0X00F77C7C);
  Color get redA200 => Color(0XFFFF5656);
  Color get redA20001 => Color(0XFFFF5050);
  Color get redA400 => Color(0XFFFF2121);

  // Teal
  Color get teal50 => Color(0XFFD2FFEA);
  Color get tealA100 => Color(0XFFB8FFF6);

  // Yellow
  Color get yellow800 => Color(0XFFF49726);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
