import 'package:dio/dio.dart';
import 'package:ilera/app/models/json_web_token_model.dart';

class TokenRepository {
  final Dio _dio;

  TokenRepository([this._dio]);

  Future<JsonWebTokenModel> getToken() async {
    print("OBTENDO TOKEN");
    final Map<String, dynamic> bodyRequest = {"password": "aleciogostoso"};
    final response = await _dio.post(
      '/authenticate',
      data: bodyRequest,
    );
    print("TOKEN OBTIDO");
    return new JsonWebTokenModel(
      jwt: response.data['jwt'],
    );
  }
}
