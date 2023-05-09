// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeModel _$ExchangeModelFromJson(Map<String, dynamic> json) =>
    ExchangeModel(
      exchangeRate: (json['mid'] as num).toDouble(),
      effectiveDate: DateTime.parse(json['effectiveDate'] as String),
    );

Map<String, dynamic> _$ExchangeModelToJson(ExchangeModel instance) =>
    <String, dynamic>{
      'mid': instance.exchangeRate,
      'effectiveDate': instance.effectiveDate.toIso8601String(),
    };
