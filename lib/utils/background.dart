import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/gen/assets.gen.dart';

background({required BuildContext context, required Widget child, }) {
  return Stack(
    children: [
      Assets.images.background.image(
          width:context.getSize.width,
          height: context.getSize.height,
          fit: BoxFit.cover),
      child,
    ],
  );
}
