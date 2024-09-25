import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/font_extension.dart';
import 'package:gbk_tour/gen/fonts.gen.dart';

appText(
    {required BuildContext context,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    required String text,
    TextAlign align = TextAlign.center,
    Color color = Colors.white}) {
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: context.font(fontSize),
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
