import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/config/local_storage/storage_repo.dart';
import 'package:gbk_tour/config/router/pages.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/bloc/auth/auth_bloc.dart';
import 'package:gbk_tour/core/bloc/distric/distric_bloc.dart';
import 'package:gbk_tour/core/bloc/home/home_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_bloc.dart';

import 'package:gbk_tour/core/bloc/splash/splash_bloc.dart';
import 'package:gbk_tour/core/bloc/splash/splash_event.dart';
import 'package:gbk_tour/data/repositories/auth/auth_repository.dart';
import 'package:gbk_tour/data/repositories/auth/dio_auth_repository.dart';
import 'package:gbk_tour/data/repositories/distric/dio_distric_repository.dart';
import 'package:gbk_tour/data/repositories/distric/distric_respository.dart';
import 'package:gbk_tour/data/repositories/hotels/dio_hotels_repository.dart';
import 'package:gbk_tour/data/repositories/hotels/hotels_repository.dart';
import 'package:gbk_tour/data/repositories/picnicspot/dio_picnic_spot_repository.dart';
import 'package:gbk_tour/data/repositories/picnicspot/picnic_spot_repository.dart';
import 'package:gbk_tour/data/repositories/province/dio_province_repository.dart';
import 'package:gbk_tour/data/repositories/province/province_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SplashBloc()..add(CheckUserStatusEvent())),
        BlocProvider(create: (_) => AuthBloc(repository: getIt(),storage: getIt())),
        BlocProvider(create: (_) => HomeBloc(repository: getIt(),storage: getIt())),
        BlocProvider(create: (_) => DistricBloc(repository: getIt(),storage: getIt())),
        BlocProvider(create: (_) => PicnicSpotBloc(repository: getIt(),storage: getIt())),
        BlocProvider(create: (_) => HotelsBloc(repository: getIt(),storage: getIt())),
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

void serviceLocator() {
  getIt.registerLazySingleton<Storage>(() => PrefStorage());
  getIt.registerLazySingleton<AuthRepository>(() => DioAuthRepository());
  getIt
      .registerLazySingleton<ProvinceRepository>(() => DioProvinceRepository());
  getIt
      .registerLazySingleton<DistricRespository>(() => DioDistricRepository());
  getIt
      .registerLazySingleton<PicnicSpotRepository>(() => DioPicnicSpotRepository());
  getIt
      .registerLazySingleton<HotelsRepository>(() => DioHotelsRepository());
}
