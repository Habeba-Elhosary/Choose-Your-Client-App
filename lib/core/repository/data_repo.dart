import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:ml_project/core/models/response_model.dart';
import '../models/request_model.dart';

class MyDataRepository {
  static final Dio _dio = Dio();

  Future<MyResponseModel> postData(MyRequestItemsModel data) async {
    try {
      final response = await _dio.post(
        'https://food-data-model.onrender.com/predict',
        data: [data.toJson()],
      );
      // ! to check the data that we send to api ! //
      debugPrint(data.toJson().toString());
      if (response.statusCode == 200) {
        debugPrint(MyResponseModel.fromJson(response.data).prediction.toString());
        return MyResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to create data: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('API error: ${e.message}');
    }
  }
}
