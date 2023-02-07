// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mongo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusEntity _$$_StatusEntityFromJson(Map<String, dynamic> json) =>
    _$_StatusEntity(
      success: json['success'] as bool?,
      code: json['code'] as int?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$_StatusEntityToJson(_$_StatusEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'code': instance.code,
      'errors': instance.errors,
    };
