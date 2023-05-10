part of 'root_cubit.dart';

class RootState {
  final Status status;
  final ExchangeModel? exchangeModel;
  final String? errorMessage;
  RootState({
    this.exchangeModel,
    this.errorMessage,
    required this.status,
  });
}
