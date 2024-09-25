import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show immutable;
abstract class AuthEvent{

}
@immutable
class AuthNavigationEvent implements AuthEvent{
final int index;
bool? isEmail;
String? value;
 AuthNavigationEvent({required this.index,this.isEmail,this.value}); 
}
@immutable
class AuthLoginEvent implements AuthEvent{
  final BuildContext context;
  final String email;
  final String password;
  const AuthLoginEvent({required this.email,required this.password,required this.context});
}
// @immutable
// class AuthSendOtpEvent implements AuthEvent{
//   final bool isEmail;
//   final String value;
//   final BuildContext context;
  
//   const AuthSendOtpEvent({required this.isEmail ,required this.value,required this.context});
// }
