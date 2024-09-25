import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';

import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/utils/app_text.dart';



textButton({
  required BuildContext context,
  required String title,
  required VoidCallback onTap,
  double borderRadius = 8,
  double verticalPadding = 16,
  Color bgColor = ColorPalette.black,
  Color textColor = ColorPalette.white,
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.w400,
  double width = 1,
  borderColor = Colors.transparent,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: context.getSize.width * width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: appText(
          context: context,
          text: title,
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight),
    ),
  );
}
