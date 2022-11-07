// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Failure _$$_FailureFromJson(Map<String, dynamic> json) => _$_Failure(
      message: json['message'] as String? ?? 'Terjadi Kesalahan, coba lagi',
      status: json['status'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FailureToJson(_$_Failure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
