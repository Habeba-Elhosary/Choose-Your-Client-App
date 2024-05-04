abstract class CheckCancellationStates {}

class CheckCancellationInitial extends CheckCancellationStates {}

class CheckCancellationLoading extends CheckCancellationStates {}

class CheckCancellationSuccess extends CheckCancellationStates {
  final String data;
  CheckCancellationSuccess({required this.data});
}

class CheckCancellationError extends CheckCancellationStates {
  final String error;
  CheckCancellationError({required this.error});
}
