import 'package:json_annotation/json_annotation.dart';
part 'model_response.g.dart';

@JsonSerializable()

class ResponseM {

  String? response;

  ResponseM({this.response});
  factory ResponseM.fromJson(Map<String, dynamic> json) => ResponseM(response: json["prediction"]);
  Map<String, dynamic> toJson() => {"prediction": response,};

}