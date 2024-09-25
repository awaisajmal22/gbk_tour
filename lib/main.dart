import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/router/pages.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/blocs/auth/auth_bloc.dart';
import 'package:gbk_tour/core/blocs/splash/splash_bloc.dart';
import 'package:gbk_tour/core/blocs/splash/splash_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> SplashBloc()..add(CheckUserStatusEvent())),
        BlocProvider(create: (_)=> AuthBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
       
      initialRoute: Routes.splash,
      onGenerateRoute: Pages.onGeneratingRoute,
      ),
    );
  }
}
