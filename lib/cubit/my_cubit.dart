import 'dart:convert';
import 'package:credit_card/model_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:credit_card/model.dart';
import 'package:http/http.dart' as http;

part 'my_state.dart';

const String api = 'predict';

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyInitial());
  ResponseM? response;

  Future<void> predict(User params) async {
    emit(MyLoading());
    try {
      String url = 'https://credit-card-fraud-4.onrender.com/predict';
      Map<String, dynamic> body = params.toJson();
      String encodedBody = jsonEncode(body);
      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      http.Response data = await http.post(
        Uri.parse(url),
        headers: headers,
        body: encodedBody,
      );

      if (data.statusCode == 200) {
        response = ResponseM.fromJson(jsonDecode(data.body));
      } else {
        emit(MyError(data.body));
        return;
      }

      emit(MyLoaded());
    } catch (e) {
      emit(MyError(e.toString()));
    }
  }
}