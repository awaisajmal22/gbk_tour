import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/auth_navigation_extension.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_event.dart';
import 'package:gbk_tour/core/bloc/auth/auth_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';

import 'package:gbk_tour/utils/text_button.dart';
import 'package:gbk_tour/gen/assets.gen.dart';

import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/text_field.dart';
import 'package:gbk_tour/utils/toast.dart';

class OtpVerificationForm extends HookWidget {
  const OtpVerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _value = useState<String>('');
    final _isEmail = context.read<AuthBloc>().state.isEmailEx ?? false;
    final _otpProvider = context.read<AuthBloc>().state.forgetValue ?? "";

    return background(
      context: context,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return SafeArea(
            child: PopScope(
              canPop: false,
              onPopInvoked: (val) {
                if (val == false) {
                  context.navigateAuth(3);
                }
              },
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<AuthBloc>()
                            .add(AuthNavigationEvent(index: 1));
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: ColorPalette.white,
                      ),
                    ),
                  ),
                  Assets.images.logo
                      .image(height: context.getSize.height * 0.2),
                  appText(
                    context: context,
                    text: _isEmail ? "Check Email" : "Check Phone",
                    align: TextAlign.left,
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                  context.heightBox(h: 0.005),
                  appText(
                    context: context,
                    align: TextAlign.left,
                    text:
                        'We sent a reset link to $_otpProvider\nenter 5 digit code that mentioned in the email',
                    fontSize: 14,
                  ),
                  context.heightBox(h: 0.04),
                  pinField(
                      context: context,
                      onChange: (val) {
                        _value.value = val;
                      }),
                  context.heightBox(h: 0.1),
                  textButton(
                    bgColor: _value.value.length < 5
                        ? ColorPalette.grey
                        : ColorPalette.black,
                    context: context,
                    title: 'VERIFY CODE',
                    onTap: () {
                      print(state.getOtp);
                      if (state.getOtp != _value.value) {
                        toast(
                            msg: 'Please try again provided otp is wrong.',
                            context: context);
                      } else {
                        context.read<AuthBloc>().add(
                            AuthNavigationEvent(index: 5, value: _otpProvider));
                      }
                    },
                  ),
                  context.heightBox(h: 0.02),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: ColorPalette.white,
                        height: 1,
                      )),
                      context.widthBox(w: 0.03),
                      Expanded(
                          child: Container(
                        color: ColorPalette.white,
                        height: 1,
                      )),
                      context.heightBox(h: 0.03),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      appText(
                        context: context,
                        text: 'Haven’t got the code yet?',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      context.widthBox(w: 0.01),
                      GestureDetector(
                        onTap: () {
                          context.read<AuthBloc>().add(AuthSendOtpEvent(
                              context: context, email: _otpProvider));
                        },
                        child: appText(
                          context: context,
                          text: 'Resend Code',
                          fontSize: 14,
                          color: ColorPalette.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
