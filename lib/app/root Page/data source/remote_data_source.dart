import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class RemoteDataSource {
  Future<Map<String, dynamic>?> getCurrentData({
    required String currency,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.nbp.pl/api/exchangerates/rates/a/$currency/?format=json');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown Error');
    }
  }

  Future<Map<String, dynamic>?> getLastMonthData({
    required String currency,
  }) async {
    final String endDate = DateFormat('yyyy-MM-dd').format(
      DateTime.now(),
    );
    final String startDate = DateFormat('yyyy-MM-dd').format(
      DateTime.now().subtract(
        const Duration(days: 30),
      ),
    );
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.nbp.pl/api/exchangerates/rates/a/$currency/$startDate/$endDate/?format=json');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown Error');
    }
  }
}
