// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelsResModel _$HotelsResModelFromJson(Map<String, dynamic> json) {
  return _HotelsResModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsResModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get province_id => throw _privateConstructorUsedError;
  int? get district_id => throw _privateConstructorUsedError;
  int? get picnic_point_id => throw _privateConstructorUsedError;
  dynamic get rent => throw _privateConstructorUsedError;
  dynamic get contact_no => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get maps_location => throw _privateConstructorUsedError;
  List<HotelImagesModel> get images => throw _privateConstructorUsedError;
  HotelPicnicPointModel? get picnic_point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsResModelCopyWith<HotelsResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsResModelCopyWith<$Res> {
  factory $HotelsResModelCopyWith(
          HotelsResModel value, $Res Function(HotelsResModel) then) =
      _$HotelsResModelCopyWithImpl<$Res, HotelsResModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? province_id,
      int? district_id,
      int? picnic_point_id,
      dynamic rent,
      dynamic contact_no,
      String? email,
      String? address,
      String? description,
      String? maps_location,
      List<HotelImagesModel> images,
      HotelPicnicPointModel? picnic_point});

  $HotelPicnicPointModelCopyWith<$Res>? get picnic_point;
}

/// @nodoc
class _$HotelsResModelCopyWithImpl<$Res, $Val extends HotelsResModel>
    implements $HotelsResModelCopyWith<$Res> {
  _$HotelsResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? province_id = freezed,
    Object? district_id = freezed,
    Object? picnic_point_id = freezed,
    Object? rent = freezed,
    Object? contact_no = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? maps_location = freezed,
    Object? images = null,
    Object? picnic_point = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      province_id: freezed == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: freezed == district_id
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picnic_point_id: freezed == picnic_point_id
          ? _value.picnic_point_id
          : picnic_point_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      contact_no: freezed == contact_no
          ? _value.contact_no
          : contact_no // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maps_location: freezed == maps_location
          ? _value.maps_location
          : maps_location // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HotelImagesModel>,
      picnic_point: freezed == picnic_point
          ? _value.picnic_point
          : picnic_point // ignore: cast_nullable_to_non_nullable
              as HotelPicnicPointModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelPicnicPointModelCopyWith<$Res>? get picnic_point {
    if (_value.picnic_point == null) {
      return null;
    }

    return $HotelPicnicPointModelCopyWith<$Res>(_value.picnic_point!, (value) {
      return _then(_value.copyWith(picnic_point: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelsResModelImplCopyWith<$Res>
    implements $HotelsResModelCopyWith<$Res> {
  factory _$$HotelsResModelImplCopyWith(_$HotelsResModelImpl value,
          $Res Function(_$HotelsResModelImpl) then) =
      __$$HotelsResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? province_id,
      int? district_id,
      int? picnic_point_id,
      dynamic rent,
      dynamic contact_no,
      String? email,
      String? address,
      String? description,
      String? maps_location,
      List<HotelImagesModel> images,
      HotelPicnicPointModel? picnic_point});

  @override
  $HotelPicnicPointModelCopyWith<$Res>? get picnic_point;
}

/// @nodoc
class __$$HotelsResModelImplCopyWithImpl<$Res>
    extends _$HotelsResModelCopyWithImpl<$Res, _$HotelsResModelImpl>
    implements _$$HotelsResModelImplCopyWith<$Res> {
  __$$HotelsResModelImplCopyWithImpl(
      _$HotelsResModelImpl _value, $Res Function(_$HotelsResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? province_id = freezed,
    Object? district_id = freezed,
    Object? picnic_point_id = freezed,
    Object? rent = freezed,
    Object? contact_no = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? maps_location = freezed,
    Object? images = null,
    Object? picnic_point = freezed,
  }) {
    return _then(_$HotelsResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      province_id: freezed == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: freezed == district_id
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      picnic_point_id: freezed == picnic_point_id
          ? _value.picnic_point_id
          : picnic_point_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      contact_no: freezed == contact_no
          ? _value.contact_no
          : contact_no // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      maps_location: freezed == maps_location
          ? _value.maps_location
          : maps_location // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HotelImagesModel>,
      picnic_point: freezed == picnic_point
          ? _value.picnic_point
          : picnic_point // ignore: cast_nullable_to_non_nullable
              as HotelPicnicPointModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsResModelImpl implements _HotelsResModel {
  _$HotelsResModelImpl(
      {this.id = -1,
      this.title = '',
      this.province_id = -1,
      this.district_id = -1,
      this.picnic_point_id = -1,
      this.rent = 0,
      this.contact_no = 0,
      this.email = '',
      this.address = '',
      this.description = '',
      this.maps_location = '',
      final List<HotelImagesModel> images = const [],
      this.picnic_point})
      : _images = images;

  factory _$HotelsResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsResModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final int? province_id;
  @override
  @JsonKey()
  final int? district_id;
  @override
  @JsonKey()
  final int? picnic_point_id;
  @override
  @JsonKey()
  final dynamic rent;
  @override
  @JsonKey()
  final dynamic contact_no;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? maps_location;
  final List<HotelImagesModel> _images;
  @override
  @JsonKey()
  List<HotelImagesModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final HotelPicnicPointModel? picnic_point;

  @override
  String toString() {
    return 'HotelsResModel(id: $id, title: $title, province_id: $province_id, district_id: $district_id, picnic_point_id: $picnic_point_id, rent: $rent, contact_no: $contact_no, email: $email, address: $address, description: $description, maps_location: $maps_location, images: $images, picnic_point: $picnic_point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.province_id, province_id) ||
                other.province_id == province_id) &&
            (identical(other.district_id, district_id) ||
                other.district_id == district_id) &&
            (identical(other.picnic_point_id, picnic_point_id) ||
                other.picnic_point_id == picnic_point_id) &&
            const DeepCollectionEquality().equals(other.rent, rent) &&
            const DeepCollectionEquality()
                .equals(other.contact_no, contact_no) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.maps_location, maps_location) ||
                other.maps_location == maps_location) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.picnic_point, picnic_point) ||
                other.picnic_point == picnic_point));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      province_id,
      district_id,
      picnic_point_id,
      const DeepCollectionEquality().hash(rent),
      const DeepCollectionEquality().hash(contact_no),
      email,
      address,
      description,
      maps_location,
      const DeepCollectionEquality().hash(_images),
      picnic_point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsResModelImplCopyWith<_$HotelsResModelImpl> get copyWith =>
      __$$HotelsResModelImplCopyWithImpl<_$HotelsResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsResModelImplToJson(
      this,
    );
  }
}

abstract class _HotelsResModel implements HotelsResModel {
  factory _HotelsResModel(
      {final int? id,
      final String? title,
      final int? province_id,
      final int? district_id,
      final int? picnic_point_id,
      final dynamic rent,
      final dynamic contact_no,
      final String? email,
      final String? address,
      final String? description,
      final String? maps_location,
      final List<HotelImagesModel> images,
      final HotelPicnicPointModel? picnic_point}) = _$HotelsResModelImpl;

  factory _HotelsResModel.fromJson(Map<String, dynamic> json) =
      _$HotelsResModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get province_id;
  @override
  int? get district_id;
  @override
  int? get picnic_point_id;
  @override
  dynamic get rent;
  @override
  dynamic get contact_no;
  @override
  String? get email;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get maps_location;
  @override
  List<HotelImagesModel> get images;
  @override
  HotelPicnicPointModel? get picnic_point;
  @override
  @JsonKey(ignore: true)
  _$$HotelsResModelImplCopyWith<_$HotelsResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelImagesModel _$HotelImagesModelFromJson(Map<String, dynamic> json) {
  return _HotelImagesModel.fromJson(json);
}

/// @nodoc
mixin _$HotelImagesModel {
  int? get id => throw _privateConstructorUsedError;
  int? get hotel_id => throw _privateConstructorUsedError;
  String? get image_path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelImagesModelCopyWith<HotelImagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelImagesModelCopyWith<$Res> {
  factory $HotelImagesModelCopyWith(
          HotelImagesModel value, $Res Function(HotelImagesModel) then) =
      _$HotelImagesModelCopyWithImpl<$Res, HotelImagesModel>;
  @useResult
  $Res call({int? id, int? hotel_id, String? image_path});
}

/// @nodoc
class _$HotelImagesModelCopyWithImpl<$Res, $Val extends HotelImagesModel>
    implements $HotelImagesModelCopyWith<$Res> {
  _$HotelImagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotel_id = freezed,
    Object? image_path = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hotel_id: freezed == hotel_id
          ? _value.hotel_id
          : hotel_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_path: freezed == image_path
          ? _value.image_path
          : image_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelImagesModelImplCopyWith<$Res>
    implements $HotelImagesModelCopyWith<$Res> {
  factory _$$HotelImagesModelImplCopyWith(_$HotelImagesModelImpl value,
          $Res Function(_$HotelImagesModelImpl) then) =
      __$$HotelImagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? hotel_id, String? image_path});
}

/// @nodoc
class __$$HotelImagesModelImplCopyWithImpl<$Res>
    extends _$HotelImagesModelCopyWithImpl<$Res, _$HotelImagesModelImpl>
    implements _$$HotelImagesModelImplCopyWith<$Res> {
  __$$HotelImagesModelImplCopyWithImpl(_$HotelImagesModelImpl _value,
      $Res Function(_$HotelImagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotel_id = freezed,
    Object? image_path = freezed,
  }) {
    return _then(_$HotelImagesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      hotel_id: freezed == hotel_id
          ? _value.hotel_id
          : hotel_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_path: freezed == image_path
          ? _value.image_path
          : image_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelImagesModelImpl implements _HotelImagesModel {
  _$HotelImagesModelImpl(
      {this.id = -1, this.hotel_id = -1, this.image_path = ''});

  factory _$HotelImagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImagesModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? hotel_id;
  @override
  @JsonKey()
  final String? image_path;

  @override
  String toString() {
    return 'HotelImagesModel(id: $id, hotel_id: $hotel_id, image_path: $image_path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImagesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotel_id, hotel_id) ||
                other.hotel_id == hotel_id) &&
            (identical(other.image_path, image_path) ||
                other.image_path == image_path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, hotel_id, image_path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImagesModelImplCopyWith<_$HotelImagesModelImpl> get copyWith =>
      __$$HotelImagesModelImplCopyWithImpl<_$HotelImagesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImagesModelImplToJson(
      this,
    );
  }
}

abstract class _HotelImagesModel implements HotelImagesModel {
  factory _HotelImagesModel(
      {final int? id,
      final int? hotel_id,
      final String? image_path}) = _$HotelImagesModelImpl;

  factory _HotelImagesModel.fromJson(Map<String, dynamic> json) =
      _$HotelImagesModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get hotel_id;
  @override
  String? get image_path;
  @override
  @JsonKey(ignore: true)
  _$$HotelImagesModelImplCopyWith<_$HotelImagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelPicnicPointModel _$HotelPicnicPointModelFromJson(
    Map<String, dynamic> json) {
  return _HotelPicnicPointModel.fromJson(json);
}

/// @nodoc
mixin _$HotelPicnicPointModel {
  int? get id => throw _privateConstructorUsedError;
  int? get province_id => throw _privateConstructorUsedError;
  int? get district_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelPicnicPointModelCopyWith<HotelPicnicPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelPicnicPointModelCopyWith<$Res> {
  factory $HotelPicnicPointModelCopyWith(HotelPicnicPointModel value,
          $Res Function(HotelPicnicPointModel) then) =
      _$HotelPicnicPointModelCopyWithImpl<$Res, HotelPicnicPointModel>;
  @useResult
  $Res call(
      {int? id,
      int? province_id,
      int? district_id,
      String? title,
      String? description});
}

/// @nodoc
class _$HotelPicnicPointModelCopyWithImpl<$Res,
        $Val extends HotelPicnicPointModel>
    implements $HotelPicnicPointModelCopyWith<$Res> {
  _$HotelPicnicPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_id = freezed,
    Object? district_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province_id: freezed == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: freezed == district_id
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelPicnicPointModelImplCopyWith<$Res>
    implements $HotelPicnicPointModelCopyWith<$Res> {
  factory _$$HotelPicnicPointModelImplCopyWith(
          _$HotelPicnicPointModelImpl value,
          $Res Function(_$HotelPicnicPointModelImpl) then) =
      __$$HotelPicnicPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? province_id,
      int? district_id,
      String? title,
      String? description});
}

/// @nodoc
class __$$HotelPicnicPointModelImplCopyWithImpl<$Res>
    extends _$HotelPicnicPointModelCopyWithImpl<$Res,
        _$HotelPicnicPointModelImpl>
    implements _$$HotelPicnicPointModelImplCopyWith<$Res> {
  __$$HotelPicnicPointModelImplCopyWithImpl(_$HotelPicnicPointModelImpl _value,
      $Res Function(_$HotelPicnicPointModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_id = freezed,
    Object? district_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$HotelPicnicPointModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province_id: freezed == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_id: freezed == district_id
          ? _value.district_id
          : district_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelPicnicPointModelImpl implements _HotelPicnicPointModel {
  _$HotelPicnicPointModelImpl(
      {this.id = -1,
      this.province_id = -1,
      this.district_id = -1,
      this.title = '',
      this.description = ''});

  factory _$HotelPicnicPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelPicnicPointModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? province_id;
  @override
  @JsonKey()
  final int? district_id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'HotelPicnicPointModel(id: $id, province_id: $province_id, district_id: $district_id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelPicnicPointModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province_id, province_id) ||
                other.province_id == province_id) &&
            (identical(other.district_id, district_id) ||
                other.district_id == district_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, province_id, district_id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelPicnicPointModelImplCopyWith<_$HotelPicnicPointModelImpl>
      get copyWith => __$$HotelPicnicPointModelImplCopyWithImpl<
          _$HotelPicnicPointModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelPicnicPointModelImplToJson(
      this,
    );
  }
}

abstract class _HotelPicnicPointModel implements HotelPicnicPointModel {
  factory _HotelPicnicPointModel(
      {final int? id,
      final int? province_id,
      final int? district_id,
      final String? title,
      final String? description}) = _$HotelPicnicPointModelImpl;

  factory _HotelPicnicPointModel.fromJson(Map<String, dynamic> json) =
      _$HotelPicnicPointModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get province_id;
  @override
  int? get district_id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$HotelPicnicPointModelImplCopyWith<_$HotelPicnicPointModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
