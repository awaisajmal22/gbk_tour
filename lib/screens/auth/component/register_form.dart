import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/auth_navigation_extension.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/mail_validate_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_event.dart';
import 'package:gbk_tour/core/bloc/auth/auth_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';

import 'package:gbk_tour/utils/text_button.dart';

import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/text_field.dart';
import 'package:gbk_tour/utils/toast.dart';
import 'package:pinput/pinput.dart';

import '../../../gen/assets.gen.dart';

class ResgisterForm extends HookWidget {
  const ResgisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _fullName = useTextEditingController();
    final _email = useTextEditingController();
    final _phone = useTextEditingController();
    final _password = useTextEditingController();
    final _confirmPassword = useTextEditingController();
    final obsecure1 = useState<bool>(true);
    final obsecure2 = useState<bool>(true);

    return background(
      context: context,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return SafeArea(
            child: PopScope(
              canPop: false,
              onPopInvoked: (val) {
                if (val == false) {
                  context.navigateAuth(1);
                }
              },
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        context.navigateAuth(1);
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
                    text: "Create account",
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                  context.heightBox(h: 0.008),
                  textField(
                    controller: _fullName,
                    hintText: 'Enter your full name',
                    context: context,
                  ),
                  context.heightBox(h: 0.01),
                  textField(
                    textInputType: TextInputType.number,
                    controller: _phone,
                    hintText: 'Enter Your Phone Number ',
                    context: context,
                  ),
                  context.heightBox(h: 0.01),
                  textField(
                    controller: _email,
                    hintText: 'Enter Your Email Address ',
                    context: context,
                  ),
                  context.heightBox(h: 0.01),
                  textField(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        obsecure1.value = !obsecure1.value;
                      },
                      child: Icon(
                        obsecure1.value
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                      ),
                    ),
                    controller: _password,
                    obsecure: obsecure1.value,
                    hintText: 'Create Your Password',
                    context: context,
                  ),
                  context.heightBox(h: 0.01),
                  textField(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        obsecure2.value = !obsecure2.value;
                      },
                      child: Icon(
                        obsecure2.value
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                      ),
                    ),
                    controller: _confirmPassword,
                    obsecure: obsecure2.value,
                    hintText: 'Conform Your Password',
                    context: context,
                  ),
                  context.heightBox(h: 0.06),
                  textButton(
                    context: context,
                    title: 'SIGN UP',
                    onTap: () {
                      if (_phone.text.isEmpty) {
                        toast(
                            msg: 'Please enter your phone number.',
                            context: context);
                      } else if (_email.text.isEmpty) {
                        toast(
                            msg: 'Please enter your email address.',
                            context: context);
                      } else if (!_email.text.isValidEmail()) {
                        toast(
                            msg: 'Please enter valid email address.',
                            context: context);
                      } else if (_password.text.isEmpty) {
                        toast(
                            msg: 'Please enter your password',
                            context: context);
                      } else if (_password.length < 6) {
                        toast(msg: 'Password is too small.', context: context);
                      } else if (_password.text != _confirmPassword.text) {
                        toast(msg: 'Password not match.', context: context);
                      } else {
                        context.read<AuthBloc>().add(AuthRegisterEvent(
                            context: context,
                            email: _email.text.toLowerCase(),
                            name: _fullName.text,
                            password: _password.text,
                            phone: _phone.text));
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
                        text: 'Already hav an account?',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      context.widthBox(w: 0.01),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthNavigationEvent(index: 1));
                        },
                        child: appText(
                          context: context,
                          text: 'Login',
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
