class ExchangeModel {
  const ExchangeModel({
    required this.exchangeRate,
    required this.effectiveDate,
  });

  final double exchangeRate;
  final DateTime effectiveDate;

  ExchangeModel.fromJson(Map<String, dynamic> json)
      : exchangeRate = json["mid"] + 0.0,
        effectiveDate = DateTime.parse(json["effectiveDate"]);
}
