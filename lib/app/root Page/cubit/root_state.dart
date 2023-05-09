part of 'root_cubit.dart';

class RootState {
  final Status status;
  final CurrentModel? currentModel;
  final String? errorMessage;
  RootState({
    this.currentModel,
    this.errorMessage,
    required this.status,
  });
}
