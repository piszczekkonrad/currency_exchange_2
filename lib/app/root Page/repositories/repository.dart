import 'package:currency_exchange/app/root%20Page/data%20source/remote_data_source.dart';
import 'package:currency_exchange/app/root%20Page/models/current_model.dart';
import 'package:currency_exchange/app/root%20Page/models/json_list_model.dart';

class Repository {
  Repository(this._remoteDataSource);

  final RemoteDataSource _remoteDataSource;

  Future<CurrentModel?> getCurrentData({
    required String currency,
  }) async {
    final json = await _remoteDataSource.getCurrentData(
      currency: currency,
    );
    if (json == null) {
      return null;
    }
    return CurrentModel.fromJson(json["rates"][0]);
  }

  Future<List<ExchangeModel>>? getLastMonthData(
      {required String currency}) async {
    final jsonData =
        await _remoteDataSource.getLastMonthData(currency: currency);
    if (jsonData == null) {
      return [];
    }
    final ratesList = jsonData["rates"] as List;
    final ratesListParsed =
        ratesList.map((e) => e as Map<String, dynamic>).toList();
    final results =
        ratesListParsed.map((e) => ExchangeModel.fromJson(e)).toList();
    results.sort(
      (a, b) => b.effectiveDate.compareTo(a.effectiveDate),
    );
    return results;
  }
}
