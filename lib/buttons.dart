import 'package:flutter/material.dart';
import 'colors.dart';
import 'texts.dart';
import 'others.dart';

class ButtonStyles {
  static ButtonStyle get buttonStyleSmall => ElevatedButton.styleFrom(
    textStyle: ProjectTextStyle.body,
    backgroundColor: ProjectColors.primaryColor,
    foregroundColor: ProjectColors.secondaryColor,
    padding: EdgeInsets.all(ProjectPaddings.paddingSmall),
  );
  static ButtonStyle get buttonStyleMedium => ElevatedButton.styleFrom(
    textStyle: ProjectTextStyle.subtitle,
    backgroundColor: ProjectColors.primaryColor,
    foregroundColor: ProjectColors.secondaryColor,
    padding: EdgeInsets.all(ProjectPaddings.paddingMedium),
  );
  static ButtonStyle get buttonStyleLarge => ElevatedButton.styleFrom(
    textStyle: ProjectTextStyle.title,
    backgroundColor: ProjectColors.primaryColor,
    foregroundColor: ProjectColors.secondaryColor,
    padding: EdgeInsets.all(ProjectPaddings.paddingLarge),
  );
  static ButtonStyle get socialButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: ProjectColors.secondaryColor,
    foregroundColor: ProjectColors.primaryColor,
    padding: EdgeInsets.all(ProjectPaddings.paddingLarge),
  );
}
