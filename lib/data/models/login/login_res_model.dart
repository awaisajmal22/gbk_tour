
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_res_model.freezed.dart';
part 'login_res_model.g.dart';
@Freezed()
class LoginResModel with _$LoginResModel{
  factory LoginResModel({
    @Default(false) bool? status,
    @Default('') String? message,
    @Default('') String? token,
    @Default('') String? token_type,
    UserModel? user,

  }) = _LoginResModel;
  factory LoginResModel.fromJson(Map<String, dynamic> json) => _$LoginResModelFromJson(json);
}
@Freezed()
class UserModel with _$UserModel{
factory UserModel({
  @Default(-1) int? id,
  @Default('') String? name,
  @Default('') String? email,
  @Default('') String? phone_number,
  @Default('') String? role,
}) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}