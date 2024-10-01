import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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

class ChangePasswordForm extends HookWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _password = useTextEditingController();
    final _confirmPassword = useTextEditingController();
    final obsecure1 = useState<bool>(true);
    final obsecure2 = useState<bool>(true);
    return background(
      context: context,
      child: PopScope(
        canPop: false,
        onPopInvoked: (val) {
          if (val == false) {
            context.navigateAuth(3);
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                context.heightBox(h: 0.05),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthNavigationEvent(index: 1));
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
                  text: "Set New Password",
                  align: TextAlign.left,
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                ),
                context.heightBox(h: 0.005),
                appText(
                  context: context,
                  align: TextAlign.left,
                  text:
                      'Create a new password. Ensure it differs from previous ones for security',
                  fontSize: 14,
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
                  hintText: 'Enter your new password',
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
                  hintText: 'Re-enter password',
                  context: context,
                ),
                context.heightBox(h: 0.04),
                textButton(
                  bgColor: ColorPalette.black,
                  context: context,
                  title: 'UPDATE',
                  onTap: () {
                    print(state.forgetValue);
                    if (_password.text.isEmpty) {
                      toast(
                          msg: 'Please enter your password', context: context);
                    } else if (_password.text.length < 6) {
                      toast(msg: 'Password is too small.', context: context);
                    } else if (_password.text != _confirmPassword.text) {
                      toast(msg: 'Password not match.', context: context);
                    } else {
                      context.read<AuthBloc>().add(AuthChangePassEvent(
                          context: context,
                          email: state.forgetValue!,
                          password: _password.text));
                    }
                  },
                ),
                context.heightBox(h: 0.02),
              ],
            );
          },
        ),
      ),
    );
  }
}
