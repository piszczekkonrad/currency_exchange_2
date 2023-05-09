class CurrentModel {
  const CurrentModel({
    required this.exchangeRate,
    required this.effectiveDate,
  });

  final double exchangeRate;
  final DateTime effectiveDate;

  CurrentModel.fromJson(Map<String, dynamic> json)
      : exchangeRate = json["rates"][0]["mid"] + 0.0,
        effectiveDate = DateTime.parse(json["rates"][0]["effectiveDate"]);
}
