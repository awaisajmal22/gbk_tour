// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picnic_spot_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PicnicSpotResModelImpl _$$PicnicSpotResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PicnicSpotResModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      province_id: (json['province_id'] as num?)?.toInt() ?? -1,
      district_id: (json['district_id'] as num?)?.toInt() ?? -1,
      description: json['description'] as String? ?? '',
      title: json['title'] as String? ?? '',
      point_images: (json['point_images'] as List<dynamic>?)
              ?.map((e) =>
                  PicnicPointImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PicnicSpotResModelImplToJson(
        _$PicnicSpotResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province_id': instance.province_id,
      'district_id': instance.district_id,
      'description': instance.description,
      'title': instance.title,
      'point_images': instance.point_images,
    };

_$PicnicPointImageModelImpl _$$PicnicPointImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PicnicPointImageModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      picnic_point_id: (json['picnic_point_id'] as num?)?.toInt() ?? -1,
      image: json['image'] as String? ??
          'https://storage.googleapis.com/proudcity/mebanenc/uploads/2021/03/placeholder-image-300x225.png',
    );

Map<String, dynamic> _$$PicnicPointImageModelImplToJson(
        _$PicnicPointImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picnic_point_id': instance.picnic_point_id,
      'image': instance.image,
    };
