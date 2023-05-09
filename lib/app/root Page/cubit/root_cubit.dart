import 'package:currency_exchange/app/root%20Page/models/current_model.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../enums.dart';

part 'root_state.dart';

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
      final currentModel = await _repository.getCurrentData(currency: currency);
      emit(
        RootState(
          status: Status.results,
          currentModel: currentModel,
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
