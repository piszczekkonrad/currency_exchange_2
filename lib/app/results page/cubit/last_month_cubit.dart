import 'package:currency_exchange/app/enums.dart';
import 'package:currency_exchange/app/root%20Page/models/json_list_model.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'last_month_state.dart';

class LastMonthCubit extends Cubit<LastMonthState> {
  LastMonthCubit(this._repository)
      : super(LastMonthState(viewType: ViewType.current));
  final Repository _repository;

  Future<void> getLastMonthData({
    required String currency,
    required bool showLastMonth,
  }) async {
    if (showLastMonth == false) {
      emit(LastMonthState(viewType: ViewType.current));
    } else {
      emit(LastMonthState(viewType: ViewType.loading));
      try {
        final results = await _repository.getLastMonthData(currency: currency);
        emit(LastMonthState(viewType: ViewType.lastMonth, results: results));
      } catch (error) {
        emit(
          LastMonthState(
            viewType: ViewType.error,
            errorMessage: error.toString(),
          ),
        );
      }
    }
  }

  Future<void> hideLastMonthData() async {
    emit(
      LastMonthState(viewType: ViewType.current),
    );
  }
}
