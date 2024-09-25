import 'package:flutter/material.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/screens/auth/auth_screen.dart';
import 'package:gbk_tour/screens/home/home_screen.dart';
import 'package:gbk_tour/screens/splash/splash_screen.dart';

class Pages {
  static Route<dynamic> onGeneratingRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.auth:
        return MaterialPageRoute(builder: (context) => const AuthScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return _ErroRoute();
    }
  }

  static Route<dynamic> _ErroRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(
          child: Text('Error Route'),
        ),
      );
    });
  }
}
