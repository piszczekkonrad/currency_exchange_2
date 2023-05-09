// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) => CurrentModel(
      exchangeRate: (json['mid'] as num).toDouble(),
      effectiveDate: DateTime.parse(json['effectiveDate'] as String),
    );

Map<String, dynamic> _$CurrentModelToJson(CurrentModel instance) =>
    <String, dynamic>{
      'mid': instance.exchangeRate,
      'effectiveDate': instance.effectiveDate.toIso8601String(),
    };
