// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picnic_spot_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PicnicSpotResModel _$PicnicSpotResModelFromJson(Map<String, dynamic> json) {
  return _PicnicSpotResModel.fromJson(json);
}

/// @nodoc
mixin _$PicnicSpotResModel {
  int? get id => throw _privateConstructorUsedError;
  int? get province_id => throw _privateConstructorUsedError;
  int? get district_id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<PicnicPointImageModel>? get point_images =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PicnicSpotResModelCopyWith<PicnicSpotResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicnicSpotResModelCopyWith<$Res> {
  factory $PicnicSpotResModelCopyWith(
          PicnicSpotResModel value, $Res Function(PicnicSpotResModel) then) =
      _$PicnicSpotResModelCopyWithImpl<$Res, PicnicSpotResModel>;
  @useResult
  $Res call(
      {int? id,
      int? province_id,
      int? district_id,
      String description,
      String? title,
      List<PicnicPointImageModel>? point_images});
}

/// @nodoc
class _$PicnicSpotResModelCopyWithImpl<$Res, $Val extends PicnicSpotResModel>
    implements $PicnicSpotResModelCopyWith<$Res> {
  _$PicnicSpotResModelCopyWithImpl(this._value, this._then);

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
    Object? description = null,
    Object? title = freezed,
    Object? point_images = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      point_images: freezed == point_images
          ? _value.point_images
          : point_images // ignore: cast_nullable_to_non_nullable
              as List<PicnicPointImageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicnicSpotResModelImplCopyWith<$Res>
    implements $PicnicSpotResModelCopyWith<$Res> {
  factory _$$PicnicSpotResModelImplCopyWith(_$PicnicSpotResModelImpl value,
          $Res Function(_$PicnicSpotResModelImpl) then) =
      __$$PicnicSpotResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? province_id,
      int? district_id,
      String description,
      String? title,
      List<PicnicPointImageModel>? point_images});
}

/// @nodoc
class __$$PicnicSpotResModelImplCopyWithImpl<$Res>
    extends _$PicnicSpotResModelCopyWithImpl<$Res, _$PicnicSpotResModelImpl>
    implements _$$PicnicSpotResModelImplCopyWith<$Res> {
  __$$PicnicSpotResModelImplCopyWithImpl(_$PicnicSpotResModelImpl _value,
      $Res Function(_$PicnicSpotResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_id = freezed,
    Object? district_id = freezed,
    Object? description = null,
    Object? title = freezed,
    Object? point_images = freezed,
  }) {
    return _then(_$PicnicSpotResModelImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      point_images: freezed == point_images
          ? _value._point_images
          : point_images // ignore: cast_nullable_to_non_nullable
              as List<PicnicPointImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PicnicSpotResModelImpl implements _PicnicSpotResModel {
  _$PicnicSpotResModelImpl(
      {this.id = -1,
      this.province_id = -1,
      this.district_id = -1,
      this.description = '',
      this.title = '',
      final List<PicnicPointImageModel>? point_images = const []})
      : _point_images = point_images;

  factory _$PicnicSpotResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicnicSpotResModelImplFromJson(json);

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
  final String description;
  @override
  @JsonKey()
  final String? title;
  final List<PicnicPointImageModel>? _point_images;
  @override
  @JsonKey()
  List<PicnicPointImageModel>? get point_images {
    final value = _point_images;
    if (value == null) return null;
    if (_point_images is EqualUnmodifiableListView) return _point_images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PicnicSpotResModel(id: $id, province_id: $province_id, district_id: $district_id, description: $description, title: $title, point_images: $point_images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicnicSpotResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province_id, province_id) ||
                other.province_id == province_id) &&
            (identical(other.district_id, district_id) ||
                other.district_id == district_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._point_images, _point_images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, province_id, district_id,
      description, title, const DeepCollectionEquality().hash(_point_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PicnicSpotResModelImplCopyWith<_$PicnicSpotResModelImpl> get copyWith =>
      __$$PicnicSpotResModelImplCopyWithImpl<_$PicnicSpotResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicnicSpotResModelImplToJson(
      this,
    );
  }
}

abstract class _PicnicSpotResModel implements PicnicSpotResModel {
  factory _PicnicSpotResModel(
          {final int? id,
          final int? province_id,
          final int? district_id,
          final String description,
          final String? title,
          final List<PicnicPointImageModel>? point_images}) =
      _$PicnicSpotResModelImpl;

  factory _PicnicSpotResModel.fromJson(Map<String, dynamic> json) =
      _$PicnicSpotResModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get province_id;
  @override
  int? get district_id;
  @override
  String get description;
  @override
  String? get title;
  @override
  List<PicnicPointImageModel>? get point_images;
  @override
  @JsonKey(ignore: true)
  _$$PicnicSpotResModelImplCopyWith<_$PicnicSpotResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PicnicPointImageModel _$PicnicPointImageModelFromJson(
    Map<String, dynamic> json) {
  return _PicnicPointImageModel.fromJson(json);
}

/// @nodoc
mixin _$PicnicPointImageModel {
  int? get id => throw _privateConstructorUsedError;
  int? get picnic_point_id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PicnicPointImageModelCopyWith<PicnicPointImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicnicPointImageModelCopyWith<$Res> {
  factory $PicnicPointImageModelCopyWith(PicnicPointImageModel value,
          $Res Function(PicnicPointImageModel) then) =
      _$PicnicPointImageModelCopyWithImpl<$Res, PicnicPointImageModel>;
  @useResult
  $Res call({int? id, int? picnic_point_id, String? image});
}

/// @nodoc
class _$PicnicPointImageModelCopyWithImpl<$Res,
        $Val extends PicnicPointImageModel>
    implements $PicnicPointImageModelCopyWith<$Res> {
  _$PicnicPointImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picnic_point_id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      picnic_point_id: freezed == picnic_point_id
          ? _value.picnic_point_id
          : picnic_point_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicnicPointImageModelImplCopyWith<$Res>
    implements $PicnicPointImageModelCopyWith<$Res> {
  factory _$$PicnicPointImageModelImplCopyWith(
          _$PicnicPointImageModelImpl value,
          $Res Function(_$PicnicPointImageModelImpl) then) =
      __$$PicnicPointImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? picnic_point_id, String? image});
}

/// @nodoc
class __$$PicnicPointImageModelImplCopyWithImpl<$Res>
    extends _$PicnicPointImageModelCopyWithImpl<$Res,
        _$PicnicPointImageModelImpl>
    implements _$$PicnicPointImageModelImplCopyWith<$Res> {
  __$$PicnicPointImageModelImplCopyWithImpl(_$PicnicPointImageModelImpl _value,
      $Res Function(_$PicnicPointImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picnic_point_id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$PicnicPointImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      picnic_point_id: freezed == picnic_point_id
          ? _value.picnic_point_id
          : picnic_point_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PicnicPointImageModelImpl implements _PicnicPointImageModel {
  _$PicnicPointImageModelImpl(
      {this.id = -1,
      this.picnic_point_id = -1,
      this.image =
          'https://storage.googleapis.com/proudcity/mebanenc/uploads/2021/03/placeholder-image-300x225.png'});

  factory _$PicnicPointImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicnicPointImageModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? picnic_point_id;
  @override
  @JsonKey()
  final String? image;

  @override
  String toString() {
    return 'PicnicPointImageModel(id: $id, picnic_point_id: $picnic_point_id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicnicPointImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picnic_point_id, picnic_point_id) ||
                other.picnic_point_id == picnic_point_id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, picnic_point_id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PicnicPointImageModelImplCopyWith<_$PicnicPointImageModelImpl>
      get copyWith => __$$PicnicPointImageModelImplCopyWithImpl<
          _$PicnicPointImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicnicPointImageModelImplToJson(
      this,
    );
  }
}

abstract class _PicnicPointImageModel implements PicnicPointImageModel {
  factory _PicnicPointImageModel(
      {final int? id,
      final int? picnic_point_id,
      final String? image}) = _$PicnicPointImageModelImpl;

  factory _PicnicPointImageModel.fromJson(Map<String, dynamic> json) =
      _$PicnicPointImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get picnic_point_id;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$PicnicPointImageModelImplCopyWith<_$PicnicPointImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
