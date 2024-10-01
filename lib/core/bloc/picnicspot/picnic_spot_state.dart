import 'package:flutter/material.dart';
import 'package:gbk_tour/core/error/auth_error.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';

@immutable
abstract class PicnicSpotState{
   final bool isloading;
final AuthError? error;
const PicnicSpotState({required this.isloading ,this.error});
}

@immutable
class GetPicnicSpotState extends PicnicSpotState{
  final List<PicnicSpotResModel>? modelList;
 const GetPicnicSpotState({required super.isloading, this.modelList});
  
}

extension PicnicSpots on PicnicSpotState{
  List<PicnicSpotResModel>? get getPicnicSpots {
final cls = this;
if(cls is GetPicnicSpotState){
  return cls.modelList;
}else{
  return null;
}
  } 
}