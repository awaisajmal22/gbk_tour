

import 'package:freezed_annotation/freezed_annotation.dart';
part 'distric_res_model.freezed.dart';
part 'distric_res_model.g.dart';
@Freezed()
class DistricResModel with _$DistricResModel{
  factory DistricResModel({
    @Default(0) int ? id,
    @Default(0) int ? province_id,
    @Default('') String ? district_name,
  
  }) = _DistricResModel;
   factory DistricResModel.fromJson(Map<String, dynamic> json) => _$DistricResModelFromJson(json);
}