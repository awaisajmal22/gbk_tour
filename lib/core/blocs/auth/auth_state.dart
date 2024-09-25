import 'package:flutter/foundation.dart' show immutable;
import 'package:gbk_tour/core/error/auth_error.dart';

@immutable
abstract class AuthState {
  final int index;
  final bool isloading;
  final AuthError? error;
  const AuthState({required this.index, required this.isloading, this.error});
}

@immutable
class AuthNavigationState extends AuthState {
  final bool? isEmail;
  final String? value;
  const AuthNavigationState({required super.index, required super.isloading,this.isEmail,this.value});
}

@immutable
class AuthLoginState extends AuthState {
  final String email;
  final String password;
  const AuthLoginState(
      {required super.index,
      required super.isloading,
      required this.email,
      required this.password});
}

@immutable
class AuthStateLogOut extends AuthState {
  const AuthStateLogOut(
      {required super.isloading, super.error, required super.index});
  @override
  String toString() =>
      'AppStateLogOut isLoading = $isloading, AuthError = $error';
}

// @immutable
// class AuthSendOtpState extends AuthState {
//   final bool? isEmail;
//   final String? value;
//   const AuthSendOtpState(
//       {required super.index,
//       required super.isloading,
//       this.isEmail,
//       this.value});
// }

extension IsEmailExtension on AuthState {
  bool? get isEmailEx {
    final cls = this;
    if (cls is AuthNavigationState) {
      print('ABC ${cls.isEmail}');
      return cls.isEmail;
    } else {
      return null;
    }
  }
}

extension ForgetValue on AuthState {
  String? get forgetValue {
    final state = this;
    if (state is AuthNavigationState) {
      return state.value;
    } else {
      return null;
    }
  }
}
