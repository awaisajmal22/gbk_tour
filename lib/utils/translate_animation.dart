import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';

class TranslateAnimation extends HookWidget {
  final bool fromLeft;
  final Widget child;
  final double fromY;
  const TranslateAnimation({super.key,required this.child, this.fromLeft = true, this.fromY =0});

  @override
  Widget build(BuildContext context) {
     final controller =
        useAnimationController(duration: const Duration(seconds: 1));

   final animation = useMemoized(() => Tween<Offset>(
          begin: Offset(fromLeft ? -context.getSize.width :context.getSize.width, fromY),
          end: Offset(1.0, 0),
        ).animate(controller));
   
  useEffect((){
controller.forward();
return controller.dispose;
  },[controller]);
    return AnimatedBuilder(animation: animation, builder: (context,_){
      return Transform.translate(
        offset: animation.value,
        child: child);
    });
  }
}