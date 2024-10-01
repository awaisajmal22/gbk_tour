import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';

import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/utils/app_text.dart';


typedef OnTap = VoidCallback;
Widget homeTile({
  required BuildContext context,
  required OnTap onTap,
  required Widget image,
  required String title,
  required String description,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          image,
          context.heightBox(h: 0.005),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorPalette.white, width: 4),
                ),
                child: Container(
                  height: context.getSize.height * 0.04,
                  width: context.getSize.width * 0.04,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
              context.widthBox(
                w: 0.02,
              ),
              appText(
                context: context,
                text: title,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          appText(
            maxLines: 5,
            align: TextAlign.left,
            context: context,
            text: description,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    ),
  );
}
