import 'package:documenso/theme/colors.dart';
import 'package:documenso/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Namespace for the App [ThemeData].
class DocumensoTheme {
  /// Standard `ThemeData` for App UI.

  ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: DocumensoColors.primary,
        background: DocumensoColors.white,
        surface: DocumensoColors.black,
      ),
      primaryColor: DocumensoColors.primary,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      scaffoldBackgroundColor: DocumensoColors.white,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      textTheme: _textTheme,
      dialogBackgroundColor: DocumensoColors.white,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: DocumensoColors.primary,
        background: DocumensoColors.black,
        surface: DocumensoColors.white,
      ),
      primaryColor: DocumensoColors.primary,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      scaffoldBackgroundColor: DocumensoColors.black,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      dialogBackgroundColor: DocumensoColors.black,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      cardTheme: _cardTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
      textButtonTheme: _textButtonThemeData,
      inputDecorationTheme: _inputDecorationTheme,
      textTheme: _textTheme,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  final _textTheme = TextTheme(
    bodyLarge: DocumensoTypography().body1Medium,
    bodyMedium: DocumensoTypography().body1Medium,
    titleMedium: DocumensoTypography().title,
    titleSmall: DocumensoTypography().titleSmall,
    displayLarge: DocumensoTypography().largeTitle,
    displayMedium: DocumensoTypography().body1Medium,
    displaySmall: DocumensoTypography().body1Medium,
    headlineMedium: DocumensoTypography().header,
    headlineSmall: DocumensoTypography().header,
    titleLarge: DocumensoTypography().largeTitle,
    labelLarge: DocumensoTypography().largeTitle,
    bodySmall: DocumensoTypography().body1Medium,
    labelSmall: DocumensoTypography().button,
  );

  static InputDecorationTheme get _inputDecorationTheme {
    return const InputDecorationTheme(
      fillColor: DocumensoColors.white,
      filled: true,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: DocumensoColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: const Size(208, 54),
      ),
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeData {
    return BottomNavigationBarThemeData(
      selectedItemColor: DocumensoColors.primary,
      unselectedItemColor: DocumensoColors.neutral.shade200,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    );
  }

  static TextButtonThemeData get _textButtonThemeData {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: DocumensoColors.neutral.shade200,
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: DocumensoColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: DocumensoColors.white, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: DocumensoColors.primary,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(color: DocumensoColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: DocumensoColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2.0,
          color: DocumensoColors.primary,
        ),
      ),
      labelColor: DocumensoColors.primary,
      unselectedLabelColor: DocumensoColors.black,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return DividerThemeData(
      space: 0,
      thickness: 1,
      color: DocumensoColors.neutral.shade100,
    );
  }

  static CardTheme get _cardTheme {
    return CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
