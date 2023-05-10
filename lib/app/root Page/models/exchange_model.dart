import 'package:freezed_annotation/freezed_annotation.dart';
part 'exchange_model.g.dart';
part 'exchange_model.freezed.dart';

@freezed
class ExchangeModel with _$ExchangeModel {
  factory ExchangeModel(
    @JsonKey(name: "mid") double exchangeRate,
    DateTime effectiveDate,
  ) = _ExchangeModel;

  factory ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeModelFromJson(json);
}


// @JsonSerializable()
// class ExchangeModel {
//   const ExchangeModel({
//     required this.exchangeRate,
//     required this.effectiveDate,
//   });
//   @JsonKey(name: "mid")
//   final double exchangeRate;
//   final DateTime effectiveDate;

//   factory ExchangeModel.fromJson(Map<String, dynamic> json) =>
//       _$ExchangeModelFromJson(json);

//   Map<String, dynamic> toJson() => _$ExchangeModelToJson(this);
// }
