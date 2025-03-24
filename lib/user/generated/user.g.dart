// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  name: json['name'] as String? ?? '',
  address: json['address'] as String? ?? '',
  gender: json['gender'] as String? ?? '',
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'gender': instance.gender,
    };
