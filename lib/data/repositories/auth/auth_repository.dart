import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbk_tour/data/models/login/login_res_model.dart';
import 'package:gbk_tour/data/models/register/register_model.dart';

abstract class AuthRepository{
  Future<bool> registerUser({
    required BuildContext context,
    required RegisterModel model,
 
  });

  Future<LoginResModel> loginUser({
    required BuildContext context,required String email,required String pass,
  });
  Future<bool> logoutUser({required BuildContext context,required String token});
  Future<String> sendOtp({required BuildContext context,required String email});

  Future<bool> changePassword({required BuildContext context, required String email,required String password});
}