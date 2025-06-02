import 'package:flutter/material.dart';
import 'colors.dart';

class ProjectPaddings {
  static const double paddingSmall = 12.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 20.0;
}

class ProjectBorderRadius {
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 12.0;
  static const double borderRadiusLarge = 20.0;
}

void projectScaffoldMessenger(BuildContext context, String message, color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: color,
      content: Text(message),
    ),
  );
}

class ProjectAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onPressed;
  const ProjectAppBar({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            onPressed();
          },
          icon: Icon(Icons.question_mark),
        ),
      ],
      backgroundColor: ProjectColors.secondaryColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
