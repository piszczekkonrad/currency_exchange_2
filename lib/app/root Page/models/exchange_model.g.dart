// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeModel _$$_ExchangeModelFromJson(Map<String, dynamic> json) =>
    _$_ExchangeModel(
      (json['mid'] as num).toDouble(),
      DateTime.parse(json['effectiveDate'] as String),
    );

Map<String, dynamic> _$$_ExchangeModelToJson(_$_ExchangeModel instance) =>
    <String, dynamic>{
      'mid': instance.exchangeRate,
      'effectiveDate': instance.effectiveDate.toIso8601String(),
    };
