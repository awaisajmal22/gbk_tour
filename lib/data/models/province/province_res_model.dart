

import 'package:freezed_annotation/freezed_annotation.dart';
part 'province_res_model.freezed.dart';
part 'province_res_model.g.dart';
@Freezed()
class ProvinceResModel with _$ProvinceResModel{
 factory ProvinceResModel({
  @Default(0) int? id,
  @Default('') String? province_name,

 }) = _ProvinceResModel;
 factory ProvinceResModel.fromJson(Map<String, dynamic> json) => _$ProvinceResModelFromJson(json);
}