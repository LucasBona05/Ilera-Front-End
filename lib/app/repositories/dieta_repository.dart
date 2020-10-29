import 'package:dio/dio.dart';
import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/models/json_web_token_model.dart';

import 'token_repository.dart';

class DietaRepository {
  final Dio _dio;
  final TokenRepository _token;

  DietaRepository([this._dio, this._token]);

  Future<DietaModel> getDietaByIdAluno(int id) async {
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    final response = await _dio.get('/dietas/obterDietaPeloAluno/$id',
        options: Options(headers: headersRequest));
    print("RESPONSE.DATA:");
    print(response.data);
    DietaModel result;
    if (response.statusCode == 200) {
      DietaModel dietaModel = DietaModel.fromJson(response.data);
      result = dietaModel;
    }
    return result;
  }
}
