class MyResponseModel {
  final List<String> prediction;

  MyResponseModel({required this.prediction});

  factory MyResponseModel.fromJson(Map<String, dynamic> json) =>
      MyResponseModel(
        prediction: List<String>.from(json['Prediction: '] ?? []),
      );

  Map<String, dynamic> toJson() => {'Prediction: ': prediction};
}
