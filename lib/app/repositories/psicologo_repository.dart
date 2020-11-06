import 'package:dio/dio.dart';
import 'package:ilera/app/models/json_web_token_model.dart';
import 'package:ilera/app/models/psicologo_model.dart';

import 'token_repository.dart';

class PsicologoRepository {
  final Dio _dio;
  final TokenRepository _token;

  PsicologoRepository(this._dio, this._token);

  Future<List<PsicologoModel>> getTodosPsicologos() async {
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    print("CAPTURANDO DADOS DO PSICOLOGO");
    final response = await _dio.get(
      '/usuarios/psicologos/obterTodos',
      options: Options(headers: headersRequest),
    );
    List<PsicologoModel> result;
    if (response.statusCode == 200) {
      print("RESPONSE DATA PSICOLOGO");
      print(response.data);
      List<PsicologoModel> result = (response.data as List)
          .map((e) => PsicologoModel.fromJson(e))
          .toList();
      return result;
    }
    return result;
  }
}
