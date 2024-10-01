// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingModel {
  String? get name => throw _privateConstructorUsedError;
  String? get cnic => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get checkin => throw _privateConstructorUsedError;
  String? get checkout => throw _privateConstructorUsedError;
  int? get hotel_id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {String? name,
      String? cnic,
      String? address,
      String? phone,
      String? checkin,
      String? checkout,
      int? hotel_id});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cnic = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? checkin = freezed,
    Object? checkout = freezed,
    Object? hotel_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cnic: freezed == cnic
          ? _value.cnic
          : cnic // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin: freezed == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as String?,
      checkout: freezed == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as String?,
      hotel_id: freezed == hotel_id
          ? _value.hotel_id
          : hotel_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? cnic,
      String? address,
      String? phone,
      String? checkin,
      String? checkout,
      int? hotel_id});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cnic = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? checkin = freezed,
    Object? checkout = freezed,
    Object? hotel_id = freezed,
  }) {
    return _then(_$BookingModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cnic: freezed == cnic
          ? _value.cnic
          : cnic // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin: freezed == checkin
          ? _value.checkin
          : checkin // ignore: cast_nullable_to_non_nullable
              as String?,
      checkout: freezed == checkout
          ? _value.checkout
          : checkout // ignore: cast_nullable_to_non_nullable
              as String?,
      hotel_id: freezed == hotel_id
          ? _value.hotel_id
          : hotel_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BookingModelImpl implements _BookingModel {
  _$BookingModelImpl(
      {this.name = '',
      this.cnic = '',
      this.address = '',
      this.phone = '',
      this.checkin = '',
      this.checkout = '',
      this.hotel_id = -1});

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? cnic;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? checkin;
  @override
  @JsonKey()
  final String? checkout;
  @override
  @JsonKey()
  final int? hotel_id;

  @override
  String toString() {
    return 'BookingModel(name: $name, cnic: $cnic, address: $address, phone: $phone, checkin: $checkin, checkout: $checkout, hotel_id: $hotel_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cnic, cnic) || other.cnic == cnic) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.checkin, checkin) || other.checkin == checkin) &&
            (identical(other.checkout, checkout) ||
                other.checkout == checkout) &&
            (identical(other.hotel_id, hotel_id) ||
                other.hotel_id == hotel_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, cnic, address, phone, checkin, checkout, hotel_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);
}

abstract class _BookingModel implements BookingModel {
  factory _BookingModel(
      {final String? name,
      final String? cnic,
      final String? address,
      final String? phone,
      final String? checkin,
      final String? checkout,
      final int? hotel_id}) = _$BookingModelImpl;

  @override
  String? get name;
  @override
  String? get cnic;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get checkin;
  @override
  String? get checkout;
  @override
  int? get hotel_id;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
