import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';

class ScaleAnimation extends HookWidget {
  final Widget child;
  const ScaleAnimation({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
     final controller =
        useAnimationController(duration: const Duration(seconds: 1));

    final animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    

    useEffect((){
      controller.forward();
     return  controller.dispose;
    },[controller]);
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Transform.scale(
          scale: animation.value,
          child: child,
        );
      });
  }
}