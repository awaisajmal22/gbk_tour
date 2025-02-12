import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/text_button.dart';

successBookDialog({required BuildContext context}) {
  return showGeneralDialog(
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: ColorPalette.transparent,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: Assets.images.background.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              appText(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                context: context,
                text: 'Congrats',
              ),
              context.heightBox(h: 0.01),
              appText(context: context, text: 'Hotel Booked Successfully'),
              context.heightBox(h: 0.02),
              AnimatedIconWidget(),
              context.heightBox(h: 0.02),
              textButton(
                context: context,
                title: 'BACK',
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.7, end: 1.0).animate(
          CurvedAnimation(parent: anim1, curve: Curves.easeOutBack),
        ),
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 300),
  );
}

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward(); // Start the animation when the widget is initialized
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: Icon(
        Icons.check_circle,
        color: ColorPalette.white,
        size: 100,
      ),
    );
  }
}
