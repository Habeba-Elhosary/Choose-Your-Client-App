import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ml_project/core/models/request_model.dart';
import '../repository/data_repo.dart';
import 'check_cancellation_state.dart';

class CheckCancellationCubit extends Cubit<CheckCancellationStates> {
  CheckCancellationCubit() : super(CheckCancellationInitial());

  final MyDataRepository _repository = MyDataRepository();

  void postData({
    required int age,
    required String gender,
    required String educationalQualification,
    required int familySize,
    required String monthlyIncome,
    required String occupation,
    required String maritalStatus,
    required double latitude,
    required double longitude,
    required int pinCode,
    required String feedback,
  }) async {
    emit(CheckCancellationLoading());
    try {
      final result = await _repository.postData(
        MyRequestItemsModel(
          age: age,
          gender: gender,
          educationalQualifications: educationalQualification,
          familySize: familySize,
          monthlyIncome: monthlyIncome,
          occupation: occupation,
          maritalStatus: maritalStatus,
          latitude: latitude,
          longitude: longitude,
          pincode: pinCode,
          feedback: feedback,
        ),
      );
      if (result.prediction.isNotEmpty) {
        emit(CheckCancellationSuccess(data: result.prediction.first));
        debugPrint("بحبك يمصررررررررررر");
        debugPrint(result.prediction.first);
      } else {
        emit(CheckCancellationError(error: 'Prediction not found'));
      }
    } on Exception catch (e) {
      emit(CheckCancellationError(error: 'Error: $e'));
    }
  }
}
