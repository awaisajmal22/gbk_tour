// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsResModelImpl _$$HotelsResModelImplFromJson(Map<String, dynamic> json) =>
    _$HotelsResModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      province_id: (json['province_id'] as num?)?.toInt() ?? -1,
      district_id: (json['district_id'] as num?)?.toInt() ?? -1,
      picnic_point_id: (json['picnic_point_id'] as num?)?.toInt() ?? -1,
      rent: json['rent'] ?? 0,
      contact_no: json['contact_no'] ?? 0,
      email: json['email'] as String? ?? '',
      address: json['address'] as String? ?? '',
      description: json['description'] as String? ?? '',
      maps_location: json['maps_location'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => HotelImagesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      picnic_point: json['picnic_point'] == null
          ? null
          : HotelPicnicPointModel.fromJson(
              json['picnic_point'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelsResModelImplToJson(
        _$HotelsResModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'province_id': instance.province_id,
      'district_id': instance.district_id,
      'picnic_point_id': instance.picnic_point_id,
      'rent': instance.rent,
      'contact_no': instance.contact_no,
      'email': instance.email,
      'address': instance.address,
      'description': instance.description,
      'maps_location': instance.maps_location,
      'images': instance.images,
      'picnic_point': instance.picnic_point,
    };

_$HotelImagesModelImpl _$$HotelImagesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelImagesModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      hotel_id: (json['hotel_id'] as num?)?.toInt() ?? -1,
      image_path: json['image_path'] as String? ?? '',
    );

Map<String, dynamic> _$$HotelImagesModelImplToJson(
        _$HotelImagesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotel_id,
      'image_path': instance.image_path,
    };

_$HotelPicnicPointModelImpl _$$HotelPicnicPointModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelPicnicPointModelImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      province_id: (json['province_id'] as num?)?.toInt() ?? -1,
      district_id: (json['district_id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$HotelPicnicPointModelImplToJson(
        _$HotelPicnicPointModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province_id': instance.province_id,
      'district_id': instance.district_id,
      'title': instance.title,
      'description': instance.description,
    };
