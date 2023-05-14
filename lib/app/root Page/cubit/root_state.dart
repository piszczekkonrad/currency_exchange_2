part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  factory RootState({
    ExchangeModel? exchangeModel,
    @Default(Status.loading) Status status,
    String? errorMessage,
  }) = _RootState;
}
