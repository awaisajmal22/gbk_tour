// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distric_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistricResModelImpl _$$DistricResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DistricResModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      province_id: (json['province_id'] as num?)?.toInt() ?? 0,
      district_name: json['district_name'] as String? ?? '',
    );

Map<String, dynamic> _$$DistricResModelImplToJson(
        _$DistricResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province_id': instance.province_id,
      'district_name': instance.district_name,
    };
