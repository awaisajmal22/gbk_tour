// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distric_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistricResModel _$DistricResModelFromJson(Map<String, dynamic> json) {
  return _DistricResModel.fromJson(json);
}

/// @nodoc
mixin _$DistricResModel {
  int? get id => throw _privateConstructorUsedError;
  int? get province_id => throw _privateConstructorUsedError;
  String? get district_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistricResModelCopyWith<DistricResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistricResModelCopyWith<$Res> {
  factory $DistricResModelCopyWith(
          DistricResModel value, $Res Function(DistricResModel) then) =
      _$DistricResModelCopyWithImpl<$Res, DistricResModel>;
  @useResult
  $Res call({int? id, int? province_id, String? district_name});
}

/// @nodoc
class _$DistricResModelCopyWithImpl<$Res, $Val extends DistricResModel>
    implements $DistricResModelCopyWith<$Res> {
  _$DistricResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_id = freezed,
    Object? district_name = freezed,
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
      district_name: freezed == district_name
          ? _value.district_name
          : district_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistricResModelImplCopyWith<$Res>
    implements $DistricResModelCopyWith<$Res> {
  factory _$$DistricResModelImplCopyWith(_$DistricResModelImpl value,
          $Res Function(_$DistricResModelImpl) then) =
      __$$DistricResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? province_id, String? district_name});
}

/// @nodoc
class __$$DistricResModelImplCopyWithImpl<$Res>
    extends _$DistricResModelCopyWithImpl<$Res, _$DistricResModelImpl>
    implements _$$DistricResModelImplCopyWith<$Res> {
  __$$DistricResModelImplCopyWithImpl(
      _$DistricResModelImpl _value, $Res Function(_$DistricResModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province_id = freezed,
    Object? district_name = freezed,
  }) {
    return _then(_$DistricResModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province_id: freezed == province_id
          ? _value.province_id
          : province_id // ignore: cast_nullable_to_non_nullable
              as int?,
      district_name: freezed == district_name
          ? _value.district_name
          : district_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistricResModelImpl implements _DistricResModel {
  _$DistricResModelImpl(
      {this.id = 0, this.province_id = 0, this.district_name = ''});

  factory _$DistricResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistricResModelImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? province_id;
  @override
  @JsonKey()
  final String? district_name;

  @override
  String toString() {
    return 'DistricResModel(id: $id, province_id: $province_id, district_name: $district_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistricResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province_id, province_id) ||
                other.province_id == province_id) &&
            (identical(other.district_name, district_name) ||
                other.district_name == district_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, province_id, district_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistricResModelImplCopyWith<_$DistricResModelImpl> get copyWith =>
      __$$DistricResModelImplCopyWithImpl<_$DistricResModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistricResModelImplToJson(
      this,
    );
  }
}

abstract class _DistricResModel implements DistricResModel {
  factory _DistricResModel(
      {final int? id,
      final int? province_id,
      final String? district_name}) = _$DistricResModelImpl;

  factory _DistricResModel.fromJson(Map<String, dynamic> json) =
      _$DistricResModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get province_id;
  @override
  String? get district_name;
  @override
  @JsonKey(ignore: true)
  _$$DistricResModelImplCopyWith<_$DistricResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
