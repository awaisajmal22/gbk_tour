import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/auth_navigation_extension.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_event.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/utils/text_button.dart';
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
    useEffect((){
context.read<AuthBloc>().add(AuthAutoLoginEvent(context: context));
    });
     final obsecure1 = useState<bool>(true);
    return background(
      context: context,
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
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
              text: 'Login with Email',
              fontSize: 14,
            ),
            context.heightBox(h: 0.008),
            textField(
              controller: _emailController,
              hintText: 'Enter Your Email',
              context: context,
            ),
            context.heightBox(h: 0.01),
            textField(
              controller: _passwordController,
              obsecure: obsecure1.value,
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
              hintText: 'Enter Your Password',
              context: context,
            ),
            GestureDetector(
              onTap: () {
                context..navigateAuth(3);
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
                    context.read<AuthBloc>().add(AuthNavigationEvent(index: 2));
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
      ),
    );
  }
}
