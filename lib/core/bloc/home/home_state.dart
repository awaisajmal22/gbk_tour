
import 'package:flutter/material.dart';
import 'package:gbk_tour/core/error/auth_error.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';

@immutable 
abstract class HomeState{
final bool isloading;
final AuthError? error;
const HomeState({required this.isloading ,this.error});
}

@immutable
class GetHomeDataState extends HomeState{
  final List<ProvinceResModel>? provinces;
 const GetHomeDataState({required super.isloading, this.provinces});
  
}

extension Provinces on HomeState{
  List<ProvinceResModel>? get getProvinces {
    final cls = this;
    if(cls is GetHomeDataState){
      return cls.provinces;
    }else{
      return null;
    }
  }
}