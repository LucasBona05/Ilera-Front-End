import 'package:dio/dio.dart';
import 'package:ilera/app/models/instrutor_model.dart';
import 'package:ilera/app/models/json_web_token_model.dart';

import 'token_repository.dart';

class InstrutorRepository {
  final Dio _dio;
  final TokenRepository _token;

  InstrutorRepository(this._dio, this._token);

  Future<List<InstrutorModel>> getTodosInstrutores() async {
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    print("CAPTURANDO DADOS DO INSTRUTOR");
    final response = await _dio.get(
      '/usuarios/instrutores/obterTodos',
      options: Options(headers: headersRequest),
    );

    List<InstrutorModel> result;
    if (response.statusCode == 200) {
      print("RESPONSE DATA INSTRUTOR");
      print(response.data);
      List<InstrutorModel> result = (response.data as List)
          .map((e) => InstrutorModel.fromJson(e))
          .toList();
      return result;
    }
    return result;
  }
}
