// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalImpl _$$AnimalImplFromJson(Map<String, dynamic> json) => _$AnimalImpl(
  name: json['name'] as String? ?? '',
  type: json['type'] as String? ?? '',
  age: (json['age'] as num?)?.toInt() ?? -1,
);

Map<String, dynamic> _$$AnimalImplToJson(_$AnimalImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'age': instance.age,
    };
