part of 'last_month_cubit.dart';

@freezed
class LastMonthState with _$LastMonthState {
  factory LastMonthState({
    List<ExchangeModel>? results,
    @Default(ViewType.current) ViewType viewType,
    String? errorMessage,
  }) = _LastMonthState;
}
