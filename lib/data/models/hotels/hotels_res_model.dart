import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotels_res_model.freezed.dart';
part 'hotels_res_model.g.dart';
@Freezed()
class HotelsResModel with _$HotelsResModel{
  factory HotelsResModel({
    @Default(-1) int ? id,
    @Default('') String ? title,
    @Default(-1) int ? province_id,
    @Default(-1) int ? district_id,
    @Default(-1) int ? picnic_point_id,
    @Default(0) dynamic rent,
    @Default(0) dynamic contact_no,
    @Default('') String ? email,
    @Default('') String ? address,
    @Default('') String ? description,
    @Default('') String ? maps_location,
    @Default([]) List<HotelImagesModel> images,
      HotelPicnicPointModel ? picnic_point,
  }) = _HotelsResModel;
  factory HotelsResModel.fromJson(Map<String, dynamic> json) => _$HotelsResModelFromJson(json);
}

@Freezed()
class HotelImagesModel with _$HotelImagesModel{
  factory HotelImagesModel({
    @Default(-1) int ? id,
    @Default(-1) int ? hotel_id,
    @Default('') String ? image_path,
  }) = _HotelImagesModel;
  factory HotelImagesModel.fromJson(Map<String, dynamic> json) => _$HotelImagesModelFromJson(json);
}

@Freezed()
class HotelPicnicPointModel with _$HotelPicnicPointModel{
  factory HotelPicnicPointModel({
    @Default(-1) int ? id,
    @Default(-1) int ? province_id,
    @Default(-1) int ? district_id,
    @Default('') String ? title,
    @Default('') String ? description,
  }) = _HotelPicnicPointModel;
  factory HotelPicnicPointModel.fromJson(Map<String, dynamic> json) => _$HotelPicnicPointModelFromJson(json);
}
