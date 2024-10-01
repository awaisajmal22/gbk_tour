import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/core/bloc/auth/auth_event.dart';
import 'package:gbk_tour/core/bloc/auth/auth_state.dart';
import 'package:gbk_tour/core/error/auth_error.dart';
import 'package:gbk_tour/data/models/login/login_res_model.dart';
import 'package:gbk_tour/data/models/register/register_model.dart';

import 'package:gbk_tour/data/repositories/auth/auth_repository.dart';
import 'package:gbk_tour/utils/toast.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository;
  Storage storage;
  String _email = '';
  String _password = '';

  AuthBloc({required this.repository, required this.storage})
      : super(const AuthNavigationState(index: 1, isloading: false)) {
    on<AuthAutoLoginEvent>(
      (event, emit) async {
        final _prefEmail = await storage.getPhoneAndEmail();
        final _prefPass = await storage.getPassword();
        if (_prefEmail.isEmpty ||
            _prefEmail == '' ||
            _prefPass.isEmpty ||
            _prefPass == '') {
        } else {
          emit(AuthStateLogOut(isloading: true, index: state.index));
          final response = await loginUser(
              context: event.context, email: _prefEmail, pass: _prefPass);
          if (response.status == true) {
            storage.setAuthToken(response.token ?? '');
            emit(AuthLoginState(
              index: state.index,
              isloading: false,
              response: response,
            ));
            Navigator.pushReplacementNamed(event.context, Routes.home);
          } else {
            emit(AuthStateLogOut(
              isloading: false,
              index: state.index,
            ));
          }
        }
      },
    );
    on<AuthNavigationEvent>((event, emit) async {
      // if (event.index == 4) {
      emit(AuthNavigationState(
          index: event.index,
          isloading: false,
          isEmail: event.isEmail,
          value: event.value));
      // } else {
      //   emit(AuthNavigationState(index: event.index, isloading: false));
      // }
    });
    on<AuthLoginEvent>(
      (event, emit) async {
        emit(AuthStateLogOut(isloading: true, index: state.index));
        _email = event.email;
        _password = event.password;
        final response = await loginUser(
            context: event.context, email: _email, pass: _password);

        if (response.status == true) {
          storage.setPassword(_password);
          storage.setPhoneAndEmail(_email);
          storage.setAuthToken(response.token ?? '');
          emit(AuthLoginState(
            index: state.index,
            isloading: false,
            response: response,
          ));
          Navigator.pushReplacementNamed(event.context, Routes.home);
          print("Success");
        } else {
          storage.clearSession();
          emit(AuthStateLogOut(
            isloading: false,
            index: state.index,
          ));
        }
      },
    );
    on<AuthRegisterEvent>(
      (event, emit) async {
        emit(AuthStateLogOut(isloading: true, index: state.index));
        bool isSuccess = await registerUser(
            model: RegisterModel(
                email: event.email,
                name: event.name,
                password: event.password,
                phone: event.phone),
            context: event.context);
        if (isSuccess) {
          emit(const AuthNavigationState(index: 1, isloading: false));
        } else {
          emit(AuthRegisterState(isloading: false, index: state.index));
        }
      },
    );
    on<AuthLogoutEvent>((event, emit) async {
      emit(AuthStateLogOut(isloading: true, index: state.index));
      bool isSuccess = await logoutUser(context: event.context);
      await Future.delayed(const Duration(seconds: 1));
      if (isSuccess) {
        await storage.clearSession();
        emit(const AuthStateLogOut(
          index: 1,
          isloading: false,
        ));

        Navigator.pushReplacementNamed(event.context, Routes.auth);
      } else {
        emit(const AuthStateLogOut(
          index: 1,
          isloading: false,
        ));
      }
    });
    on<AuthSendOtpEvent>(
      (event, emit) async {
        emit(AuthStateLogOut(isloading: true, index: state.index));
        String code = await sendOtp(context: event.context, email: event.email);
        print("OTP $code");
        if (code.isEmpty || code == '') {
          emit(AuthStateLogOut(isloading: false, index: state.index));
        } else {
          emit(AuthNavigationState(
              isloading: false, index: 4, code: code, value: event.email));
        }
      },
    );

    on<AuthChangePassEvent>(
      (event, emit) async {
        emit(AuthStateLogOut(isloading: true, index: state.index));
        final isSuccess = await changePassword(
            context: event.context,
            email: event.email,
            password: event.password);
        if (isSuccess) {
          emit(AuthNavigationState(
              index: 1, isloading: false, value: event.email));
        } else {
          emit(const AuthStateLogOut(isloading: false, index: 1));
        }
      },
    );
  }
  Future<bool> registerUser(
      {required RegisterModel model, required BuildContext context}) async {
    final isSuccess =
        await repository.registerUser(context: context, model: model);
    return isSuccess;
  }

  Future<LoginResModel> loginUser(
      {required BuildContext context,
      required String email,
      required String pass}) async {
    final data =
        await repository.loginUser(context: context, email: email, pass: pass);
    return data;
  }

  Future<bool> logoutUser({required BuildContext context}) async {
    return await repository.logoutUser(
        context: context, token: await storage.getAuthToken());
  }

  Future<String> sendOtp(
      {required BuildContext context, required String email}) async {
    return await repository.sendOtp(context: context, email: email);
  }

  Future<bool> changePassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    return await repository.changePassword(
        context: context, email: email, password: password);
  }
}
