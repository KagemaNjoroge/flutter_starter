import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      brightness: Brightness.dark,

      colorScheme: ColorScheme.dark(
        primary: BrandColors.primary,
        secondary: BrandColors.secondary,
        tertiary: BrandColors.tertiary,
        surface: BrandColors.darkGrey,
        error: BrandColors.danger,
        onPrimary: BrandColors.white,
        onSecondary: BrandColors.darkGrey,
        onTertiary: BrandColors.white,
        onSurface: BrandColors.white,
        onError: BrandColors.white,
      ),

      primaryColor: BrandColors.primary,

      scaffoldBackgroundColor: const Color(0xFF0F1011),

      appBarTheme: AppBarTheme(
        backgroundColor: BrandColors.darkGrey,
        foregroundColor: BrandColors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.ibmPlexSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: BrandColors.white,
        ),
        iconTheme: const IconThemeData(color: BrandColors.white, size: 24),
      ),

      textTheme: TextTheme(
        displayLarge: GoogleFonts.ibmPlexSans(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        displayMedium: GoogleFonts.ibmPlexSans(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        displaySmall: GoogleFonts.ibmPlexSans(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        headlineLarge: GoogleFonts.ibmPlexSans(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: BrandColors.white,
        ),
        headlineMedium: GoogleFonts.ibmPlexSans(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: BrandColors.white,
        ),
        headlineSmall: GoogleFonts.ibmPlexSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: BrandColors.white,
        ),
        titleLarge: GoogleFonts.ibmPlexSans(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: BrandColors.white,
        ),
        titleMedium: GoogleFonts.ibmPlexSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: BrandColors.white,
        ),
        titleSmall: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: BrandColors.white,
        ),
        bodyLarge: GoogleFonts.ibmPlexSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        bodyMedium: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        bodySmall: GoogleFonts.ibmPlexSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: BrandColors.neutral,
        ),
        labelLarge: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: BrandColors.white,
        ),
        labelMedium: GoogleFonts.ibmPlexSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: BrandColors.white,
        ),
        labelSmall: GoogleFonts.ibmPlexSans(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: BrandColors.neutral,
        ),
      ),
    );
  }

  static String get fontFamily => GoogleFonts.ibmPlexSans().fontFamily!;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,

      colorScheme: ColorScheme.light(
        primary: BrandColors.primary,
        secondary: BrandColors.secondary,
        tertiary: BrandColors.tertiary,
        surface: BrandColors.white,
        error: BrandColors.danger,
        onPrimary: BrandColors.white,
        onSecondary: BrandColors.white,
        onTertiary: BrandColors.white,
        onSurface: BrandColors.darkGrey,
        onError: BrandColors.white,
      ),

      primaryColor: BrandColors.primary,

      scaffoldBackgroundColor: BrandColors.white,

      appBarTheme: AppBarTheme(
        backgroundColor: BrandColors.tertiary,
        foregroundColor: BrandColors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.ibmPlexSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: BrandColors.white,
        ),
        iconTheme: const IconThemeData(color: BrandColors.white, size: 24),
      ),

      textTheme: TextTheme(
        displayLarge: GoogleFonts.ibmPlexSans(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),
        displayMedium: GoogleFonts.ibmPlexSans(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),
        displaySmall: GoogleFonts.ibmPlexSans(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),

        headlineLarge: GoogleFonts.ibmPlexSans(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: BrandColors.darkGrey,
        ),
        headlineMedium: GoogleFonts.ibmPlexSans(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: BrandColors.darkGrey,
        ),
        headlineSmall: GoogleFonts.ibmPlexSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: BrandColors.darkGrey,
        ),

        titleLarge: GoogleFonts.ibmPlexSans(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),
        titleMedium: GoogleFonts.ibmPlexSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),
        titleSmall: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),

        bodyLarge: GoogleFonts.ibmPlexSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),
        bodyMedium: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),
        bodySmall: GoogleFonts.ibmPlexSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: BrandColors.neutral,
        ),

        labelLarge: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),
        labelMedium: GoogleFonts.ibmPlexSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),
        labelSmall: GoogleFonts.ibmPlexSans(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: BrandColors.neutral,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: BrandColors.primary,
          foregroundColor: BrandColors.white,
          textStyle: GoogleFonts.ibmPlexSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: BrandColors.primary,
          textStyle: GoogleFonts.ibmPlexSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: const BorderSide(color: BrandColors.primary, width: 1),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: BrandColors.primary,
          textStyle: GoogleFonts.ibmPlexSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: BrandColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BrandColors.neutral),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BrandColors.neutral),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BrandColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: BrandColors.danger),
        ),
        labelStyle: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.neutral,
        ),
        hintStyle: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.neutral,
        ),
      ),

      cardTheme: CardThemeData(
        color: BrandColors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: BrandColors.secondary.withValues(alpha: 0.1),
        selectedColor: BrandColors.secondary,
        labelStyle: GoogleFonts.ibmPlexSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: BrandColors.darkGrey,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: BrandColors.tertiary,
        contentTextStyle: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        behavior: SnackBarBehavior.floating,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: BrandColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titleTextStyle: GoogleFonts.ibmPlexSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: BrandColors.darkGrey,
        ),
        contentTextStyle: GoogleFonts.ibmPlexSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: BrandColors.darkGrey,
        ),
      ),
    );
  }
}

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  static const light = AppThemeExtension(
    success: BrandColors.success,
    warning: BrandColors.warning,
    info: BrandColors.info,
    danger: BrandColors.danger,
  );
  static const dark = AppThemeExtension(
    success: BrandColors.success,
    warning: BrandColors.warning,
    info: BrandColors.info,
    danger: BrandColors.danger,
  );
  final Color success;
  final Color warning;

  final Color info;

  final Color danger;

  const AppThemeExtension({
    required this.success,
    required this.warning,
    required this.info,
    required this.danger,
  });

  @override
  AppThemeExtension copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? danger,
  }) {
    return AppThemeExtension(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      danger: danger ?? this.danger,
    );
  }

  @override
  AppThemeExtension lerp(AppThemeExtension? other, double t) {
    if (other is! AppThemeExtension) {
      return this;
    }
    return AppThemeExtension(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
    );
  }
}

class BrandColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGrey = Color(0xFF151717);

  static const Color redCoral = Color(0xFFFF444F);
  static const Color orange = Color(0xFF2A3052);

  static const Color primary = Color(0xFFFF444F);
  static const Color secondary = Color(0xFF85ACB0);
  static const Color tertiary = Color(0xFF2A3052);
  static const Color success = Color(0xFF4BB4B3);
  static const Color danger = Color(0xFFCC2E3D);
  static const Color warning = Color(0xFFFFAD3A);
  static const Color info = Color(0xFF377CFC);
  static const Color neutral = Color(0xFF999999);
}
