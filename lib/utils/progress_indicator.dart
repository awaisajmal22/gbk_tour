import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';

progressIndicator(){
  return const Center(
    child: CircularProgressIndicator(
      color: ColorPalette.white,
    ),
  );
}