import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/blocs/auth/auth_event.dart';
import 'package:gbk_tour/core/blocs/auth/auth_state.dart';
import 'package:gbk_tour/core/blocs/splash/splash_state.dart';
import 'package:gbk_tour/core/error/auth_error.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String _email = '';
  String _password = '';
  // bool _isEmail = false;
  // String _forgetTypeValue ='';
  AuthBloc() : super(const AuthNavigationState(index: 1, isloading: false)) {
    on<AuthNavigationEvent>(
      (event, emit) async{
        if(event.index == 4){


emit(AuthNavigationState(index: event.index, isloading: false,isEmail:event.isEmail,value:event.value));
        }else{
          emit(AuthNavigationState(index: event.index, isloading: false));}
      }
    );
    on<AuthLoginEvent>(
      (event, emit) async {
        emit(AuthStateLogOut(isloading: true, index: state.index));
        _email = event.email;
        _password = event.password;

        await Future.delayed(const Duration(seconds: 1));
        if (_email == 'test@test.com' && _password == 'password123') {
          emit(AuthLoginState(
              index: state.index,
              isloading: false,
              email: _email,
              password: _password));
          Navigator.pushReplacementNamed(event.context, Routes.home);
          print("Success");
        } else {
          emit(AuthStateLogOut(
            isloading: false,
            index: state.index,
          ));
        }
      },
    );
   
  }
}
