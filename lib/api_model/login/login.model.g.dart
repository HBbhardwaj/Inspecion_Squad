// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      message: json['message'] as String?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      First_name: json['First_name'] as String?,
      Last_name: json['Last_name'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      mobile: json['mobile'] as String?,
      title: json['title'] as String?,
      attribute_name: json['attribute_name'] as String?,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'id': instance.id,
      'First_name': instance.First_name,
      'Last_name': instance.Last_name,
      'email': instance.email,
      'mobile': instance.mobile,
      'title': instance.title,
      'attribute_name': instance.attribute_name,
    };
