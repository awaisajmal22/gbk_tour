import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/auth/auth_state.dart';

import 'package:gbk_tour/screens/auth/component/change_password_form.dart';
import 'package:gbk_tour/screens/auth/component/forget_password_screen.dart';
import 'package:gbk_tour/screens/auth/component/login_form.dart';
import 'package:gbk_tour/screens/auth/component/otp_success_form.dart';
import 'package:gbk_tour/screens/auth/component/otp_verification_form.dart';
import 'package:gbk_tour/screens/auth/component/register_form.dart';
import 'package:gbk_tour/utils/dialog/auth_error_dialog.dart';
import 'package:gbk_tour/utils/loader/loading.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          switch (state.index) {
            case 1:
              return const LoginForm();
            case 2:
              return const ResgisterForm();
            case 3:
              return const ForgetPasswordForm();
            case 4:
              return const OtpVerificationForm();
            case 5:
              return const OtpSuccessForm();
            case 6:
              return const ChangePasswordForm();
            default:
              return const SizedBox();
          }
        },
        listener: (BuildContext context, AuthState state) {
          if (state.isloading) {
            return LoadingScreen.inatance()
                .show(context: context, text: 'Loading....');
          } else {
            LoadingScreen.inatance().hide();
          }
          final error = state.error;
          if (error != null) {
            showAuthErrorDailog(
              authError: error,
              contxt: context,
            );
          }
        },
      ),
    );
  }
}
