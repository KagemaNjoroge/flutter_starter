import 'package:flutter/material.dart';

import 'theme.dart';

class AppElevation {
  static const double none = 0.0;
  static const double sm = 2.0;
  static const double md = 4.0;
  static const double lg = 8.0;
  static const double xl = 16.0;
}

class AppRadius {
  static const double sm = 4.0;
  static const double md = 8.0;
  static const double lg = 12.0;
  static const double xl = 16.0;
  static const double xxl = 24.0;
}

class AppSpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
}

class BrandTextStyles {
  static TextStyle bodyLarge(BuildContext context) =>
      context.textTheme.bodyLarge!;

  static TextStyle bodyMedium(BuildContext context) =>
      context.textTheme.bodyMedium!;

  static TextStyle bodySmall(BuildContext context) =>
      context.textTheme.bodySmall!;

  static TextStyle caption(BuildContext context) =>
      context.textTheme.bodySmall!.copyWith(color: context.brandNeutral);

  static TextStyle error(BuildContext context) =>
      context.textTheme.bodyMedium!.copyWith(color: context.brandDanger);

  static TextStyle heading1(BuildContext context) =>
      context.textTheme.headlineLarge!.copyWith(color: context.brandPrimary);

  static TextStyle heading2(BuildContext context) =>
      context.textTheme.headlineMedium!.copyWith(color: context.brandTertiary);

  static TextStyle heading3(BuildContext context) =>
      context.textTheme.headlineSmall!.copyWith(color: context.brandTertiary);

  static TextStyle link(BuildContext context) => context.textTheme.bodyMedium!
      .copyWith(color: context.brandInfo, decoration: TextDecoration.underline);

  static TextStyle success(BuildContext context) =>
      context.textTheme.bodyMedium!.copyWith(color: context.brandSuccess);

  static TextStyle warning(BuildContext context) =>
      context.textTheme.bodyMedium!.copyWith(color: context.brandWarning);
}

extension ThemeExtensions on BuildContext {
  AppThemeExtension get brandColors => theme.extension<AppThemeExtension>()!;

  Color get brandDanger => brandColors.danger;

  Color get brandDarkGrey => BrandColors.darkGrey;

  Color get brandInfo => brandColors.info;

  Color get brandNeutral => BrandColors.neutral;

  Color get brandPrimary => BrandColors.primary;
  Color get brandSecondary => BrandColors.secondary;
  Color get brandSuccess => brandColors.success;
  Color get brandTertiary => BrandColors.tertiary;
  Color get brandWarning => brandColors.warning;
  Color get brandWhite => BrandColors.white;

  ColorScheme get colorScheme => theme.colorScheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  TextTheme get textTheme => theme.textTheme;

  ThemeData get theme => Theme.of(this);
}
