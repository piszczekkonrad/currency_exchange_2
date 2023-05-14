import 'package:bloc_test/bloc_test.dart';
import 'package:currency_exchange/app/enums.dart';
import 'package:currency_exchange/app/results%20page/cubit/last_month_cubit.dart';
import 'package:currency_exchange/app/root%20Page/models/exchange_model.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  late LastMonthCubit sut;
  late Repository repository;

  setUp(() {
    repository = MockRepository();
    sut = LastMonthCubit(repository);
  });

  group("fetchData", () {
    group('ViewType.current', () {
      blocTest<LastMonthCubit, LastMonthState>(
        "emits ViewType.current",
        build: () => sut,
        act: (cubit) =>
            cubit.getLastMonthData(currency: "USD", showLastMonth: false),
        expect: () => [
          LastMonthState(viewType: ViewType.current),
        ],
      );
    });
    group('Last.Month succes', () {
      setUp(() {
        when(
          () => repository.getLastMonthData(currency: "USD"),
        ).thenAnswer(
          (_) async => [
            ExchangeModel(4.1638, DateTime.parse("2023-05-12")),
            ExchangeModel(4.1414, DateTime.parse("2023-05-11"))
          ],
        );
      });
      blocTest<LastMonthCubit, LastMonthState>(
        "emits ViewType.loading then ViewType.lastMonth with result",
        build: () => sut,
        act: (cubit) =>
            cubit.getLastMonthData(currency: "USD", showLastMonth: true),
        expect: () => [
          LastMonthState(viewType: ViewType.loading),
          LastMonthState(
            viewType: ViewType.lastMonth,
            results: [
              ExchangeModel(4.1638, DateTime.parse("2023-05-12")),
              ExchangeModel(4.1414, DateTime.parse("2023-05-11"))
            ],
          )
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(
          () => repository.getLastMonthData(currency: "USD"),
        ).thenThrow(Exception('test-exception-error'));
      });
      blocTest<LastMonthCubit, LastMonthState>(
        "emits ViewType.loading then ViewType.error with errorMessage",
        build: () => sut,
        act: (cubit) =>
            cubit.getLastMonthData(currency: "USD", showLastMonth: true),
        expect: () => [
          LastMonthState(viewType: ViewType.loading),
          LastMonthState(
            viewType: ViewType.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
}
