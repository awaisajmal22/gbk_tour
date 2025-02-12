import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/core/constant/constant.dart';

class ZoomImageScreen extends HookWidget {
  final String image;
  ZoomImageScreen({required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Hero(
          tag: 'hero$image',
          child: InteractiveViewer(
            panEnabled: true,
            scaleEnabled: true,
            minScale: 0.5,
            maxScale: 5.0,
            child: Image.network(
              Constant.serverUrl + image,
            ),
          ),
        ),
      ),
    );
  }
}
