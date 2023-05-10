import 'package:json_annotation/json_annotation.dart';
part 'exchange_model.g.dart';

@JsonSerializable()
class ExchangeModel {
  const ExchangeModel({
    required this.exchangeRate,
    required this.effectiveDate,
  });
  @JsonKey(name: "mid")
  final double exchangeRate;
  final DateTime effectiveDate;

  factory ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeModelToJson(this);
}