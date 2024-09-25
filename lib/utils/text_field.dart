import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbk_tour/config/extensions/font_extension.dart';

import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/gen/fonts.gen.dart';
import 'package:pinput/pinput.dart';

typedef OnChange = Function(String);
typedef OnCompleted = Function(String);
textField(
    {required String hintText,
    bool obsecure = false,
    TextEditingController? controller,
    TextInputType textInputType = TextInputType.text,
    OnChange? onChange,
    Widget? suffixIcon,
    Color fillColor = ColorPalette.white,
    required BuildContext context}) {
  final border = OutlineInputBorder(borderRadius: BorderRadius.circular(8));
  return TextFormField(
    onChanged: onChange,
    controller: controller,
    obscureText: obsecure,
    keyboardType: textInputType,
    style: TextStyle(
        color: ColorPalette.black,
        fontFamily: FontFamily.poppins,
        fontSize: context.font(14),
        fontWeight: FontWeight.w400),
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      fillColor: fillColor,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
          color: ColorPalette.grey,
          fontFamily: FontFamily.poppins,
          fontSize: context.font(14),
          fontWeight: FontWeight.w400),
      border: border,
      errorBorder: border,
      enabledBorder: border,
      focusedBorder: border,
      disabledBorder: border,
      focusedErrorBorder: border,
    ),
  );
}

pinField({
  required BuildContext context,
  OnCompleted? onComplete,
  OnChange? onChange,
}) {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 58,
    textStyle: const TextStyle(
      fontSize: 22,
      color: ColorPalette.white,
    ),
    decoration: BoxDecoration(
        color: ColorPalette.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorPalette.white)),
  );
  return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        keyboardType: TextInputType.number,
        onChanged: onChange,
        onCompleted: onComplete,
        length: 5,
        focusedPinTheme: defaultPinTheme,
        submittedPinTheme: defaultPinTheme,
        errorPinTheme: defaultPinTheme,
      ));
}
