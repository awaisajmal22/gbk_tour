import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gbk_tour/config/extensions/font_extension.dart';

import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/gen/fonts.gen.dart';

import 'package:gbk_tour/utils/loader/loading_controller.dart';

class LoadingScreen {
  //Singelton Pattern
  LoadingScreen._sharedInstance();
  static final LoadingScreen _shared = LoadingScreen._sharedInstance();
  factory LoadingScreen.inatance() => _shared;

  LoadingScreenController? _controller;

  void show({
    required BuildContext context,
    required String text,
  }) {
    if (_controller?.update(text) ?? false) {
      return;
    } else {
      _controller = _showOverlay(context: context, text: text);
    }
  }

  void hide() {
    _controller?.close();
    _controller = null;
  }

  LoadingScreenController _showOverlay({
    required BuildContext context,
    required String text,
  }) {
    final _text = StreamController<String>();
    _text.add(text);

    // get the size
    final state = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  constraints: BoxConstraints(
                    maxHeight: size.height * 0.8,
                    maxWidth: size.width * 0.8,
                    minWidth: size.width * 0.5,
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.cover),
                    // color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        CircularProgressIndicator(
                          color: ColorPalette.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        StreamBuilder<String>(
                          stream: _text.stream,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(snapshot.data!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: ColorPalette.white,
                                      fontFamily: FontFamily.poppins,
                                      fontSize: context.font(
                                        14,
                                      ),
                                      fontWeight: FontWeight.w400));
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    state.insert(overlay);
    return LoadingScreenController(
      close: () {
        _text.close();
        overlay.remove();
        return true;
      },
      update: (text) {
        _text.add(text);
        return true;
      },
    );
  }
}
