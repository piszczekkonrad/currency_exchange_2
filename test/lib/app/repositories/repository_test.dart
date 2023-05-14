import 'package:currency_exchange/app/root%20Page/models/exchange_model.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:currency_exchange/app/root%20Page/data%20source/remote_data_source.dart';

class MockDataSource extends Mock implements RemoteDataSource {}

void main() {
  late Repository sut;
  late MockDataSource dataSource;

  setUp(() {
    dataSource = MockDataSource();
    sut = Repository(dataSource);
  });

  group('getCurrentExchangeRate', () {
    test('should call _remoteSataSource.getCurrentData() method', () async {
//1
      when(() => dataSource.getCurrentData(currency: "USD"))
          .thenAnswer((_) async => {
                "table": "A",
                "currency": "dolar amerykański",
                "code": "USD",
                "rates": [
                  {
                    "no": "091/A/NBP/2023",
                    "effectiveDate": "2023-05-12",
                    "mid": 4.1638
                  }
                ]
              });

//2
      final results = await sut.getCurrentData(currency: "USD");
//3
      verify(() => dataSource.getCurrentData(currency: "USD")).called(1);
    });

    test('should return current exchange rate for USD', () async {
//1
      when(() => dataSource.getCurrentData(currency: "USD"))
          .thenAnswer((_) async => {
                "table": "A",
                "currency": "dolar amerykański",
                "code": "USD",
                "rates": [
                  {
                    "no": "091/A/NBP/2023",
                    "effectiveDate": "2023-05-12",
                    "mid": 4.1638
                  }
                ]
              });
      //2
      final results = await sut.getCurrentData(currency: "USD");
      //3
      expect(results, ExchangeModel(4.1638, DateTime.parse("2023-05-12")));
    });
  });

  group('getLastMonthExchangeRates', () {
    test('should call _remoteSataSource.getLastMonth() method', () async {
//1
      when(() => dataSource.getLastMonthData(currency: "USD"))
          .thenAnswer((_) async => {
                "table": "A",
                "currency": "dolar amerykański",
                "code": "USD",
                "rates": [
                  {
                    "no": "090/A/NBP/2023",
                    "effectiveDate": "2023-05-11",
                    "mid": 4.1414
                  },
                  {
                    "no": "091/A/NBP/2023",
                    "effectiveDate": "2023-05-12",
                    "mid": 4.1638
                  }
                ]
              });

//2
      final results = await sut.getLastMonthData(currency: "USD");
//3
      verify(() => dataSource.getLastMonthData(currency: "USD")).called(1);
    });

    test('should return rates from last 30 days from newest to oldest',
        () async {
//1
      when(() => dataSource.getLastMonthData(currency: "USD"))
          .thenAnswer((_) async => {
                "table": "A",
                "currency": "dolar amerykański",
                "code": "USD",
                "rates": [
                  {
                    "no": "090/A/NBP/2023",
                    "effectiveDate": "2023-05-11",
                    "mid": 4.1414
                  },
                  {
                    "no": "091/A/NBP/2023",
                    "effectiveDate": "2023-05-12",
                    "mid": 4.1638
                  }
                ]
              });
      //2
      final results = await sut.getLastMonthData(currency: "USD");
      //3
      expect(results, [
        ExchangeModel(4.1638, DateTime.parse("2023-05-12")),
        ExchangeModel(4.1414, DateTime.parse("2023-05-11"))
      ]);
    });
  });
}
