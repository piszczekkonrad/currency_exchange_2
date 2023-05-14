import 'package:currency_exchange/app/root%20Page/models/exchange_model.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../enums.dart';

part 'root_state.dart';
part 'root_cubit.freezed.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit(this._repository) : super(RootState(status: Status.loading));

  final Repository _repository;

  Future<void> getCurrent({
    required String currency,
  }) async {
    emit(
      RootState(status: Status.loading),
    );
    try {
      final exchangeModel =
          await _repository.getCurrentData(currency: currency);
      emit(
        RootState(
          status: Status.results,
          exchangeModel: exchangeModel,
        ),
      );
    } catch (error) {
      emit(
        RootState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
