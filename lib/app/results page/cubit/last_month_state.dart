part of 'last_month_cubit.dart';

class LastMonthState {
  final ViewType viewType;
  final List<ExchangeModel>? results;
  final String? errorMessage;
  LastMonthState({required this.viewType, this.results, this.errorMessage});
}
