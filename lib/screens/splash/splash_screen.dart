import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/gen/assets.gen.dart';

import '../../core/bloc/splash/splash_bloc.dart';
import '../../core/bloc/splash/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is NavigateToAuthState) {
          Navigator.pushReplacementNamed(context, Routes.auth);
        } else if (state is NavigateToHomeState) {
          Navigator.pushReplacementNamed(context, Routes.home);
        }
      },
      child: Scaffold(
          body: Assets.images.splash.image(
              height: context.getSize.height,
              width: context.getSize.width,
              fit: BoxFit.fill)),
    );
  }
}
