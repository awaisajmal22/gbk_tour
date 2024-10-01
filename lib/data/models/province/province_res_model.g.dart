// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceResModelImpl _$$ProvinceResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProvinceResModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      province_name: json['province_name'] as String? ?? '',
    );

Map<String, dynamic> _$$ProvinceResModelImplToJson(
        _$ProvinceResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province_name': instance.province_name,
    };
