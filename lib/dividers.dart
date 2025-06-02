import 'package:flutter/material.dart';
import 'colors.dart';
import 'texts.dart';
import 'others.dart';

class LRDivider extends StatelessWidget {
  const LRDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: ProjectColors.primaryColor, thickness: 1),
        ),
        Padding(
          padding: EdgeInsets.all(ProjectPaddings.paddingMedium),
          child: Text(text, style: ProjectTextStyle.subtitle),
        ),
        Expanded(
          child: Divider(color: ProjectColors.primaryColor, thickness: 1),
        ),
      ],
    );
  }
}
