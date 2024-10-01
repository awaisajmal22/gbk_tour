// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvinceResModel _$ProvinceResModelFromJson(Map<String, dynamic> json) {
  return _ProvinceResModel.fromJson(json);
}

/// @nodoc
mixin _$ProvinceResModel {
  int? get id => throw _privateConstructorUsedError;
  String? get province_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceResModelCopyWith<ProvinceResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceResModelCopyWith<$Res> {
  factory $ProvinceResModelCopyWith(
          ProvinceResModel value, $Res Function(ProvinceResModel) then) =
      _$ProvinceResModelCopyWithImpl<$Res, ProvinceResModel>;
  @useResult
  $Res call({int? id, String? province_name});
}

/// @nodoc
class _$ProvinceResModelCopyWithImpl<$Res, $Val extends ProvinceResModel>
    implements $ProvinceResModelCopyWith<$Res> {
  _$ProvinceResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province_name: freezed == province_name
          ? _value.province_name
          : province_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceResModelImplCopyWith<$Res>
    implements $ProvinceResModelCopyWith<$Res> {
  factory _$$ProvinceResModelImplCopyWith(_$ProvinceResModelImpl value,
          $Res Function(_$ProvinceResModelImpl) then) =
      __$$ProvinceResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? province_name});
}

/// @nodoc
class __$$ProvinceResModelImplCopyWithImpl<$Res>
    extends _$ProvinceResModelCopyWithImpl<$Res, _$ProvinceResModelImpl>
    implements _$$ProvinceResModelImplCopyWith<$Res> {
  __$$ProvinceResModelImplCopyWithImpl(_$ProvinceResModelImpl _value,
      $Res Function(_$ProvinceResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_name = freezed,
  }) {
    return _then(_$ProvinceResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province_name: freezed == province_name
          ? _value.province_name
          : province_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceResModelImpl implements _ProvinceResModel {
  _$ProvinceResModelImpl({this.id = 0, this.province_name = ''});

  factory _$ProvinceResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceResModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? province_name;

  @override
  String toString() {
    return 'ProvinceResModel(id: $id, province_name: $province_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province_name, province_name) ||
                other.province_name == province_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, province_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceResModelImplCopyWith<_$ProvinceResModelImpl> get copyWith =>
      __$$ProvinceResModelImplCopyWithImpl<_$ProvinceResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceResModelImplToJson(
      this,
    );
  }
}

abstract class _ProvinceResModel implements ProvinceResModel {
  factory _ProvinceResModel({final int? id, final String? province_name}) =
      _$ProvinceResModelImpl;

  factory _ProvinceResModel.fromJson(Map<String, dynamic> json) =
      _$ProvinceResModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get province_name;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceResModelImplCopyWith<_$ProvinceResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
