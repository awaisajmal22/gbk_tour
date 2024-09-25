import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';

extension HeightWidthExtension on BuildContext {
  SizedBox heightBox({
    double h = 0.01,
  }) =>
      SizedBox(
        height: this.getSize.height * h,
      );
  SizedBox widthBox({
    double w = 0.01,
  }) =>
      SizedBox(
        width: this.getSize.width * w,
      );
}
