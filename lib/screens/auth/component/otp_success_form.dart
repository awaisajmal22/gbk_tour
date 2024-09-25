import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/blocs/auth/auth_bloc.dart';
import 'package:gbk_tour/core/blocs/auth/auth_event.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/text_button.dart';

import '../../../gen/assets.gen.dart';

class OtpSuccessForm extends HookWidget {
  const OtpSuccessForm({super.key});

  @override
  Widget build(BuildContext context) {
    return background(
      context: context,
      child: PopScope(
        canPop: false,
        onPopInvoked: (val) {
          if (val == false) {
            context.read<AuthBloc>().add(AuthNavigationEvent(index: 3));
          }
        },
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            context.heightBox(h: 0.05),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  context.read<AuthBloc>().add(AuthNavigationEvent(index: 1));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: ColorPalette.white,
                ),
              ),
            ),
            Assets.images.logo.image(height: context.getSize.height * 0.2),
            appText(
              context: context,
              text: "Password Reset",
              align: TextAlign.left,
              fontSize: 36,
              fontWeight: FontWeight.w800,
            ),
            context.heightBox(h: 0.005),
            appText(
              context: context,
              align: TextAlign.left,
              text:
                  'Your password has been successfully reset. click confirm to set a new password',
              fontSize: 14,
            ),
            context.heightBox(h: 0.04),
            textButton(
              bgColor: ColorPalette.black,
              context: context,
              title: 'CONFIRM',
              onTap: () {
                context.read<AuthBloc>().add(AuthNavigationEvent(index: 6));
              },
            ),
            context.heightBox(h: 0.02),
          ],
        ),
      ),
    );
  }
}
