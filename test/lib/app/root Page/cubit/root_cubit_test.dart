import 'package:bloc_test/bloc_test.dart';
import 'package:currency_exchange/app/enums.dart';
import 'package:currency_exchange/app/root%20Page/cubit/root_cubit.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:currency_exchange/app/root%20Page/models/exchange_model.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  late RootCubit sut;
  late Repository repository;

  setUp(() {
    repository = MockRepository();
    sut = RootCubit(repository);
  });

  group("fetchData", () {
    group('success', () {
      setUp(() {
        when(
          () => repository.getCurrentData(currency: "USD"),
        ).thenAnswer(
          (_) async => ExchangeModel(4.1638, DateTime.parse("2023-05-12")),
        );
      });

      blocTest<RootCubit, RootState>(
        "'emit Status.loading then Status.results with exchangeModel'",
        build: () => sut,
        act: (cubit) => cubit.getCurrent(
          currency: "USD",
        ),
        expect: () => [
          RootState(status: Status.loading),
          RootState(
            status: Status.results,
            exchangeModel: ExchangeModel(4.1638, DateTime.parse("2023-05-12")),
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(
          () => repository.getCurrentData(currency: "USD"),
        ).thenThrow(Exception('test-exception-error'));
      });
      blocTest<RootCubit, RootState>(
        "emits ViewType.loading then ViewType.error with errorMessage",
        build: () => sut,
        act: (cubit) => cubit.getCurrent(currency: "USD"),
        expect: () => [
          RootState(status: Status.loading),
          RootState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
}
