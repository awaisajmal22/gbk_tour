import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/gen/assets.gen.dart';

class Constant {
  static const gilgitDes =
      'Gilgit-Baltistan is a stunningly scenic region in northern Pakistan, known for its dramatic mountain landscapes and rich cultural heritage. It boasts some of the highest peaks in the world, including K2, and offers a unique blend of adventure and tradition.';
  static const kashmirDes =
      'Azad Kashmir, a region in northern Pakistan, is renowned for its lush green valleys, picturesque landscapes, and serene rivers. It offers a tranquil retreat with its natural beauty and rich cultural traditions.';
  static Image gilgitImage(BuildContext context) => Assets.images.kashmir.image(
        height: context.getSize.height * 0.25,
        width: context.getSize.width,
        fit: BoxFit.fill,
      );
  static Image kashmirImage(BuildContext context) => Assets.images.map.image(
        height: context.getSize.height * 0.25,
        width: context.getSize.width,
        fit: BoxFit.fill,
      );

  static const serverUrl = 'https://gbktour.com/';
}
