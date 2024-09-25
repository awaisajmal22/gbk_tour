import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/blocs/auth/auth_bloc.dart';
import 'package:gbk_tour/core/blocs/auth/auth_event.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';

import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/text_button.dart';
import 'package:gbk_tour/utils/text_field.dart';

class LoginForm extends HookWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
    return background(
      context: context,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          context.heightBox(h: 0.1),
          Assets.images.logo.image(height: context.getSize.height * 0.2),
          appText(
            context: context,
            text: "Welcome",
            fontSize: 36,
            fontWeight: FontWeight.w800,
          ),
          context.heightBox(h: 0.005),
          appText(
            context: context,
            text: 'Login with Email /Phone No',
            fontSize: 14,
          ),
          context.heightBox(h: 0.008),
          textField(
            controller: _emailController,
            hintText: 'Enter Your Phone Number / Email',
            context: context,
          ),
          context.heightBox(h: 0.01),
          textField(
            controller: _passwordController,
            obsecure: true,
            hintText: 'Enter Your Password',
            context: context,
          ),
          GestureDetector(
            onTap: () {
              context.read<AuthBloc>().add( AuthNavigationEvent(index: 3));
            },
            child: appText(
                context: context,
                text: 'Forget Your Password?',
                align: TextAlign.right,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorPalette.blue),
          ),
          context.heightBox(h: 0.1),
          textButton(
            context: context,
            title: 'LOGIN',
            onTap: () {
              context.read<AuthBloc>().add(AuthLoginEvent(
                  email: _emailController.text,
                  password: _passwordController.text,
                  context: context));
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
                text: 'Don’t have Account?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              context.widthBox(w: 0.01),
              GestureDetector(
                onTap: () {
                  context
                      .read<AuthBloc>()
                      .add( AuthNavigationEvent(index: 2));
                },
                child: appText(
                  context: context,
                  text: 'Register Now',
                  fontSize: 14,
                  color: ColorPalette.blue,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
