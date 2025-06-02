import 'package:flutter/material.dart';
import 'colors.dart';

class ProjectTextStyle {
  static const scaleSize = 1.0;
  static const dapFont = 'Exo2';
  static const TextStyle title = TextStyle(
    fontSize: 20 * scaleSize,
    fontWeight: FontWeight.bold,
    color: ProjectColors.secondaryColor,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16 * scaleSize,
    fontWeight: FontWeight.w600,
    color: ProjectColors.primaryColor,
  );

  static const TextStyle body = TextStyle(
    fontSize: 11.5 * scaleSize,
    fontWeight: FontWeight.normal,
    color: ProjectColors.primaryColor,
  );
}

class ProjectTheme {
  static ThemeData get theme => ThemeData(
    fontFamily: ProjectTextStyle.dapFont,
    scaffoldBackgroundColor: ProjectColors.secondaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ProjectColors.primaryColor,
      surface: ProjectColors.secondaryColor,
    ),
  );
}

class ProjectTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headingWhite = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle body = TextStyle(fontSize: 16);

  static const TextStyle bodyBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
