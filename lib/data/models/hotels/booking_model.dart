import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_model.freezed.dart';
// part 'booking_model.g.dart';
@Freezed()
class BookingModel with _$BookingModel{
  factory BookingModel({
    @Default('') String ? name,
    @Default('') String ? cnic,
    @Default('') String ? address,
    @Default('') String ? phone,
    @Default('') String ? checkin,
    @Default('') String ? checkout,
    @Default(-1) int ? hotel_id,
  }) = _BookingModel;
  // factory BookingModel.formJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);
}