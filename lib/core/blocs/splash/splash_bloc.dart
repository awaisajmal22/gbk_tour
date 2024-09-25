import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/core/blocs/splash/splash_event.dart';
import 'package:gbk_tour/core/blocs/splash/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc() : super(InitialState()){
    on<CheckUserStatusEvent>((event, emit)async{
       await Future.delayed(const Duration(seconds: 2));
      bool isLoggedIn = await userLoggedIn();
      if(isLoggedIn){

emit(NavigateToHomeState());
      }else{

        emit(NavigateToAuthState());
      }
    });
  }
 
}

Future<bool> userLoggedIn() async{
  return false;
}