import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/utils/background.dart';

class HomeDrawer extends StatelessWidget {
  final VoidCallback onTap;
  const HomeDrawer({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getSize.height * 0.1,
      child: Drawer(
        
        shadowColor: ColorPalette.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(50))),
        width: context.getSize.width * 0.25,
        child: background(
          context: context,
          child: GestureDetector(
onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  border: Border(
                      right: BorderSide(
                    color: ColorPalette.white,
                  ))),
              child: Icon(
                Icons.logout,
                color:  ColorPalette.white,
                size: context.getSize.width * 0.1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
