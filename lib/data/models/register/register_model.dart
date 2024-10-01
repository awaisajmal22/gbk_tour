import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_model.freezed.dart';
part 'register_model.g.dart';
@Freezed()
class RegisterModel with _$RegisterModel{

 factory RegisterModel({
    required String email,
    required String name,
    required String password,
    required String phone,
  }) = _RegisterModel;
  factory RegisterModel.fromJson(Map<String, Object?> json) => _$RegisterModelFromJson(json);
}
