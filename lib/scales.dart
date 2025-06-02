import 'package:flutter/material.dart';

const double scale = 1.0;

class ProjectWidths {
  static const imageWidth = 60;
  static const imageHeight = 40;
  static (double, double) getScaleSize(BuildContext context) {
    double scaleSize = 1.0;
    double descaleSize = 1.0;
    if (MediaQuery.of(context).size.width > 600) {
      scaleSize = 2.0;
      descaleSize = 0.5;
    } else if (MediaQuery.of(context).size.width > 400) {
      scaleSize = 1.5;
      descaleSize = 0.7;
    }
    return (scaleSize, descaleSize);
  }
}
