import 'package:flutter/material.dart';
import 'package:chinese_font_library/chinese_font_library.dart';

/// 用枚举太麻烦了
enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

const Map<String, Color> colorSeedMap = {
  'M3 Baseline': Color(0xff6750a4),
  'Indigo': Colors.indigo,
  'Blue': Colors.blue,
  'Teal': Colors.teal,
  'Green': Colors.green,
  'Yellow': Colors.yellow,
  'Orange': Colors.orange,
  'Deep Orange': Colors.deepOrange,
  'Pink': Colors.pink
};

// 统一圆角口径
const double _kRadiusCard = 14;
const double _kRadiusControl = 10;
const double _kRadiusDialog = 18;

// 浅色配色：沉稳青蓝 + 干净中性白
const ColorScheme _lightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF2F6F8F),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFC9E4F2),
  onPrimaryContainer: Color(0xFF0A2533),
  secondary: Color(0xFF527687),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD5E7F0),
  onSecondaryContainer: Color(0xFF0E2A38),
  tertiary: Color(0xFF648B7C),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFD8ECE2),
  onTertiaryContainer: Color(0xFF14382D),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  surface: Color(0xFFF7F9FB),
  onSurface: Color(0xFF181C1F),
  surfaceContainerHighest: Color(0xFFDCE2E7),
  onSurfaceVariant: Color(0xFF40484D),
  outline: Color(0xFF70787E),
  outlineVariant: Color(0xFFC0C7CC),
  inverseSurface: Color(0xFF2D3134),
  onInverseSurface: Color(0xFFEEF1F3),
  inversePrimary: Color(0xFF93CCE9),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
);

// 深色配色：深蓝灰底，夜间不刺眼
const ColorScheme _darkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF93CCE9),
  onPrimary: Color(0xFF003447),
  primaryContainer: Color(0xFF114A66),
  onPrimaryContainer: Color(0xFFC9E4F2),
  secondary: Color(0xFFB9C8D2),
  onSecondary: Color(0xFF23323B),
  secondaryContainer: Color(0xFF3A4851),
  onSecondaryContainer: Color(0xFFD5E7F0),
  tertiary: Color(0xFFBBD0C6),
  onTertiary: Color(0xFF25352E),
  tertiaryContainer: Color(0xFF3B4C44),
  onTertiaryContainer: Color(0xFFD8ECE2),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  surface: Color(0xFF191D20),
  onSurface: Color(0xFFE0E3E5),
  surfaceContainerHighest: Color(0xFF40484E),
  onSurfaceVariant: Color(0xFFBFC8CD),
  outline: Color(0xFF899298),
  outlineVariant: Color(0xFF40484E),
  inverseSurface: Color(0xFFE0E3E5),
  onInverseSurface: Color(0xFF2D3134),
  inversePrimary: Color(0xFF2F6F8F),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightScheme,
  textTheme: _buildTextTheme(Brightness.light),
  scaffoldBackgroundColor: const Color(0xFFF4F6F8),
  navigationRailTheme: _navigationRail(_lightScheme),
  cardTheme: _cardTheme(_lightScheme),
  inputDecorationTheme: _inputTheme(_lightScheme),
  filledButtonTheme: _filledButton(),
  outlinedButtonTheme: _outlinedButton(),
  textButtonTheme: _textButton(),
  dialogTheme: _dialogTheme(_lightScheme),
  appBarTheme: _appBar(_lightScheme),
  dividerTheme: _divider(_lightScheme),
  snackBarTheme: _snackBar(_lightScheme),
  tooltipTheme: _tooltip(_lightScheme),
  checkboxTheme: _checkbox(_lightScheme),
  switchTheme: _switch(_lightScheme),
  floatingActionButtonTheme: _fab(_lightScheme),
  chipTheme: _chip(_lightScheme),
  progressIndicatorTheme:
      ProgressIndicatorThemeData(color: _lightScheme.primary),
  listTileTheme: ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_kRadiusControl),
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: _lightScheme.surface,
    indicatorColor: _lightScheme.primaryContainer,
    labelTextStyle:
        WidgetStateProperty.all(_buildTextTheme(Brightness.light).labelMedium),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkScheme,
  textTheme: _buildTextTheme(Brightness.dark),
  scaffoldBackgroundColor: const Color(0xFF131619),
  navigationRailTheme: _navigationRail(_darkScheme),
  cardTheme: _cardTheme(_darkScheme),
  inputDecorationTheme: _inputTheme(_darkScheme),
  filledButtonTheme: _filledButton(),
  outlinedButtonTheme: _outlinedButton(),
  textButtonTheme: _textButton(),
  dialogTheme: _dialogTheme(_darkScheme),
  appBarTheme: _appBar(_darkScheme),
  dividerTheme: _divider(_darkScheme),
  snackBarTheme: _snackBar(_darkScheme),
  tooltipTheme: _tooltip(_darkScheme),
  checkboxTheme: _checkbox(_darkScheme),
  switchTheme: _switch(_darkScheme),
  floatingActionButtonTheme: _fab(_darkScheme),
  chipTheme: _chip(_darkScheme),
  progressIndicatorTheme:
      ProgressIndicatorThemeData(color: _darkScheme.primary),
  listTileTheme: ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_kRadiusControl),
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: _darkScheme.surface,
    indicatorColor: _darkScheme.primaryContainer,
    labelTextStyle:
        WidgetStateProperty.all(_buildTextTheme(Brightness.dark).labelMedium),
  ),
);

// ---------- 组件主题工厂 ----------

NavigationRailThemeData _navigationRail(ColorScheme scheme) {
  return NavigationRailThemeData(
    backgroundColor: scheme.surface,
    indicatorColor: scheme.primaryContainer,
    selectedIconTheme: IconThemeData(color: scheme.primary),
    selectedLabelTextStyle: TextStyle(
      color: scheme.primary,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelTextStyle:
        TextStyle(color: scheme.onSurfaceVariant, fontSize: 12),
  );
}

CardThemeData _cardTheme(ColorScheme scheme) {
  return CardThemeData(
    elevation: 1.5,
    color: scheme.surface,
    surfaceTintColor: scheme.surface,
    shadowColor: scheme.shadow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_kRadiusCard),
    ),
    margin: const EdgeInsets.all(8),
  );
}

InputDecorationTheme _inputTheme(ColorScheme scheme) {
  final outline = OutlineInputBorder(
    borderRadius: BorderRadius.circular(_kRadiusControl),
    borderSide: BorderSide(color: scheme.outlineVariant),
  );
  return InputDecorationTheme(
    filled: true,
    fillColor: scheme.surface,
    border: outline,
    enabledBorder: outline,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(_kRadiusControl),
      borderSide: BorderSide(color: scheme.primary, width: 2),
    ),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  );
}

FilledButtonThemeData _filledButton() {
  return FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_kRadiusControl),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    ),
  );
}

OutlinedButtonThemeData _outlinedButton() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_kRadiusControl),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );
}

TextButtonThemeData _textButton() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_kRadiusControl),
      ),
    ),
  );
}

DialogThemeData _dialogTheme(ColorScheme scheme) {
  return DialogThemeData(
    backgroundColor: scheme.surface,
    surfaceTintColor: scheme.surface,
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_kRadiusDialog),
    ),
  );
}

AppBarTheme _appBar(ColorScheme scheme) {
  return AppBarTheme(
    backgroundColor: scheme.surface,
    foregroundColor: scheme.onSurface,
    elevation: 0,
    scrolledUnderElevation: 1.5,
    centerTitle: false,
    titleTextStyle: _buildTextTheme(scheme.brightness)
        .titleLarge
        ?.copyWith(fontWeight: FontWeight.w600),
  );
}

DividerThemeData _divider(ColorScheme scheme) {
  return DividerThemeData(
    color: scheme.outlineVariant,
    thickness: 1,
    space: 1,
  );
}

SnackBarThemeData _snackBar(ColorScheme scheme) {
  return SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_kRadiusControl),
    ),
  );
}

TooltipThemeData _tooltip(ColorScheme scheme) {
  return TooltipThemeData(
    decoration: BoxDecoration(
      color: scheme.inverseSurface,
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: TextStyle(color: scheme.onInverseSurface, fontSize: 12),
  );
}

CheckboxThemeData _checkbox(ColorScheme scheme) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    side: BorderSide(color: scheme.outline, width: 1.5),
  );
}

SwitchThemeData _switch(ColorScheme scheme) {
  return SwitchThemeData(
    trackOutlineColor:
        WidgetStateProperty.resolveWith((states) => scheme.outline),
    thumbColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? scheme.onPrimary
          : scheme.outline,
    ),
  );
}

FloatingActionButtonThemeData _fab(ColorScheme scheme) {
  return FloatingActionButtonThemeData(
    backgroundColor: scheme.primaryContainer,
    foregroundColor: scheme.onPrimaryContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

ChipThemeData _chip(ColorScheme scheme) {
  return ChipThemeData(
    backgroundColor: scheme.surfaceContainerHighest,
    side: BorderSide(color: scheme.outlineVariant),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

TextTheme _buildTextTheme(Brightness brightness) {
  const baseTheme = TextTheme(
    bodyLarge: TextStyle(height: 1.4),
    bodyMedium: TextStyle(height: 1.4),
    bodySmall: TextStyle(height: 1.35),
    labelLarge: TextStyle(fontWeight: FontWeight.w600),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),
    titleLarge: TextStyle(fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontWeight: FontWeight.w600),
  );
  return baseTheme
      .apply(fontFamily: 'LatoLato')
      .useSystemChineseFont(brightness);
}
