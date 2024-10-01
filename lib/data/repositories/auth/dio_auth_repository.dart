import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gbk_tour/core/constant/constant.dart';
import 'package:gbk_tour/data/models/login/login_res_model.dart';
import 'package:gbk_tour/data/models/register/register_model.dart';
import 'package:gbk_tour/data/network/api_url.dart';

import 'package:gbk_tour/data/network/api_services.dart';

import 'package:gbk_tour/data/repositories/auth/auth_repository.dart';
import 'package:gbk_tour/utils/toast.dart';

class DioAuthRepository implements AuthRepository {
  @override
  Future<bool> registerUser(
      {required BuildContext context, required RegisterModel model}) async {
    bool isSuccess = false;
    try {
      FormData formData = FormData.fromMap({
        "name": model.name,
        "email": model.email,
        "password": model.password,
        "phone_number": model.phone,
      });
      final response = await API().postRequest(
        context,
        ApiUrl.register,
        formData,
      );
      if (response.statusCode == 200) {
        isSuccess = true;
      } else {
        toast(msg: 'Something went wrong', context: context);
        isSuccess = false;
      }
    } catch (e) {
      print(e);
    }
    return isSuccess;
  }

  @override
  Future<LoginResModel> loginUser({
    required BuildContext context,
    required String email,
    required String pass,
  }) async {
    LoginResModel model = LoginResModel.fromJson({});
    try {
      final formData = FormData.fromMap({'email': email, 'password': pass});
      final response = await API().postRequest(context, ApiUrl.login, formData);
      if (response.statusCode == 200) {
        model = LoginResModel.fromJson(response.data);
      } else {}
    } catch (e) {}
    return model;
  }

  @override
  Future<bool> logoutUser(
      {required BuildContext context, required String token}) async {
    bool isSuccess = false;
    try {
      final response = await API()
          .postRequestHeaderWithoutBody(context, ApiUrl.logout, token);
      if (response.statusCode == 200) {
        isSuccess = true;
      }
    } catch (e) {}
    return isSuccess;
  }

  @override
  Future<String> sendOtp(
      {required BuildContext context, required String email}) async {
    String value = '';
    try {
      FormData formData = FormData.fromMap({"email": email});
      final response =
          await API().postRequest(context, ApiUrl.sendotp, formData);
      if (response.statusCode == 200) {
        final repData = response.data;
        print(repData);
        value = repData['data']['code'].toString();
      }
    } catch (e) {}
    return value;
  }
  
  @override
  Future<bool> changePassword({required BuildContext context, required String email, required String password})async {
   bool isSuccess = false;
   try{
    FormData formData = FormData.fromMap({
      "email": email,
      "password":password
    });
    final response = await API().postRequest(context, ApiUrl.changepassword, formData);
    if(response.statusCode == 200){
      isSuccess = true;
    }else{
      isSuccess = false;
    }

   }catch(e){}
   return isSuccess;
  }
}
