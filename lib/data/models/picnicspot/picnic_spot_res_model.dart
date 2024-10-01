
import 'package:freezed_annotation/freezed_annotation.dart';
part 'picnic_spot_res_model.freezed.dart';
part 'picnic_spot_res_model.g.dart';
@Freezed()
class PicnicSpotResModel with _$PicnicSpotResModel{
  factory PicnicSpotResModel({
    @Default(-1) int ? id,
    @Default(-1) int ? province_id,
    @Default(-1) int ? district_id,
    @Default('') String description,
    @Default('') String ? title,
    @Default([]) List<PicnicPointImageModel> ? point_images,
  }) = _PicnicSpotResModel;
  factory PicnicSpotResModel.fromJson(Map<String, dynamic> json) => _$PicnicSpotResModelFromJson(json);
}

@Freezed()
class PicnicPointImageModel with _$PicnicPointImageModel{
factory PicnicPointImageModel({
  @Default(-1) int ? id,
  @Default(-1) int ? picnic_point_id,
@Default('https://storage.googleapis.com/proudcity/mebanenc/uploads/2021/03/placeholder-image-300x225.png') String ? image,

}) = _PicnicPointImageModel;
factory PicnicPointImageModel.fromJson(Map<String, dynamic> json) => _$PicnicPointImageModelFromJson(json);
}