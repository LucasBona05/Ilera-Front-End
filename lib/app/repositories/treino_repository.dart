import 'package:dio/dio.dart';
import 'package:ilera/app/models/ficha_de_treino_model.dart';
import 'package:ilera/app/models/json_web_token_model.dart';

import 'token_repository.dart';

class TreinoRepository {
  final Dio _dio;
  final TokenRepository _token;

  TreinoRepository(this._dio, this._token);

  Future<FichaDeTreinoModel> getTreinoByIdAluno(int id) async {
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    final response = await _dio.get(
      '/obterTreinoPeloAluno/$id',
      options: Options(headers: headersRequest),
    );
    print("RESPONSE.DATA:");
    print(response.data);

    FichaDeTreinoModel result;
    if (response.statusCode == 200) {
      FichaDeTreinoModel treinoModel =
          FichaDeTreinoModel.fromJson(response.data);
      result = treinoModel;
    }
    return result;
  }
}
