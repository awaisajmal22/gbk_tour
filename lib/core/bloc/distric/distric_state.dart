
import 'package:flutter/material.dart';
import 'package:gbk_tour/core/error/auth_error.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';

@immutable
abstract class DistricState{
  final bool isloading;
final AuthError? error;
const DistricState({required this.isloading ,this.error});
}

@immutable
class GetDistricState extends DistricState{
  final List<DistricResModel>? modelList;
  const GetDistricState({required super.isloading, this.modelList});
  
}
extension Districs on DistricState{
  List<DistricResModel>? get getDistrics {
    final cls = this;
    if(cls is GetDistricState){
      return cls.modelList;
    }else{
      return null;
    }
  }
}