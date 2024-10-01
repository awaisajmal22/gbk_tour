import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AuthEvent {}


@immutable
class AuthNavigationEvent implements AuthEvent {
  final int index;
 final bool? isEmail;
  final String? value;
 const AuthNavigationEvent({required this.index, this.isEmail, this.value});
}


@immutable
class AuthLoginEvent implements AuthEvent {
  final BuildContext context;
  final String email;
  final String password;
  const AuthLoginEvent(
      {required this.email, required this.password, required this.context});
}
@immutable
class AuthAutoLoginEvent implements AuthEvent{
  final BuildContext context;
  const AuthAutoLoginEvent({required this.context});
}
@immutable
class AuthRegisterEvent implements AuthEvent {
  final BuildContext context;
  final String name;
  final String email;
  final String password;
  final String phone;
 const AuthRegisterEvent({
    required this.context,
    required this.email,
    required this.name,
    required this.password,
    required this.phone,
  });
}
@immutable
class AuthLogoutEvent implements AuthEvent{
  final BuildContext context;
  const AuthLogoutEvent({required this.context});
}
@immutable
class AuthSendOtpEvent implements AuthEvent{
  final BuildContext context;
  final String email;
 const AuthSendOtpEvent({required this.context,required this.email});
}

@immutable
class AuthChangePassEvent implements AuthEvent{
  final BuildContext context;
  final String email;
  final String password;
  const AuthChangePassEvent({required this.context,required this.email,required this.password});
}
// @immutable
// class AuthSendOtpEvent implements AuthEvent{
//   final bool isEmail;
//   final String value;
//   final BuildContext context;
  
//   const AuthSendOtpEvent({required this.isEmail ,required this.value,required this.context});
// }
