import 'package:json_annotation/json_annotation.dart';
part 'login.model.g.dart';

@JsonSerializable()
class LoginModel {
  String? message;
  String? status;
  LoginData? data;

  LoginModel({this.message, this.status, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}

@JsonSerializable()
class LoginData {
  String? id;
  String? First_name;
  String? Last_name;
  String? email;
  String? mobile;
  String? title;
  String? attribute_name;

  LoginData(
      {this.First_name,
      this.Last_name,
      this.email,
      this.id,
      this.mobile,
      this.title,
      this.attribute_name});

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
