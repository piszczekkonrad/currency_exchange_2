import 'package:json_annotation/json_annotation.dart';
part 'current_model.g.dart';

@JsonSerializable()
class CurrentModel {
  const CurrentModel({
    required this.exchangeRate,
    required this.effectiveDate,
  });
  @JsonKey(name: "mid")
  final double exchangeRate;
  final DateTime effectiveDate;

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}
