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

class MyElevatedButton extends ElevatedButton {
  MyElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.style,
  }) : super(style: style, child: Text(text), onPressed: onPressed);
  final String text;
  final VoidCallback onPressed;
  final ButtonStyle style;
}

class MyTextButton extends TextButton {
  final TextAlign textAlign;
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  MyTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.textAlign,
  }) : super(
         child: Text(text, style: textStyle, textAlign: textAlign),
         onPressed: onPressed,
       );
}

class SocialButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String icon;
  final double width;
  final double height;
  const SocialButtons({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(ProjectPaddings.paddingSmall),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.43,
          decoration: BoxDecoration(
            border: Border.all(color: ProjectColors.primaryColor),
            borderRadius: BorderRadius.all(
              Radius.circular(ProjectBorderRadius.borderRadiusLarge),
            ),
            color: ProjectColors.secondaryColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(ProjectPaddings.paddingSmall),
                child: Image.asset(icon, width: width, height: height),
              ),
              Padding(
                padding: EdgeInsets.only(right: ProjectPaddings.paddingSmall),
                child: Text(text, style: ProjectTextStyle.subtitle),
              ),
              SizedBox(width: ProjectPaddings.paddingSmall),
            ],
          ),
        ),
      ),
    );
  }
}