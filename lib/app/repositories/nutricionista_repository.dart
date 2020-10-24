import 'package:dio/dio.dart';
import 'package:ilera/app/models/json_web_token_model.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/repositories/token_repository.dart';

class NutricionistaRepository {
  final Dio _dio;
  final TokenRepository _token;

  NutricionistaRepository([this._dio, this._token]);

  Future<NutricionistaModel> login(String email, String senha) async {
    print("REALIZANDO LOGIN DO NUTRICIONISTA");
    final Map<String, dynamic> bodyRequest = {"email": email, "senha": senha};
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    final response = await _dio.post('/usuarios/nutricionistas/login',
        data: bodyRequest, options: Options(headers: headersRequest));
    NutricionistaModel nutricionista = new NutricionistaModel(
        cpf: response.data['cpf'],
        crn: response.data['crn'],
        email: response.data['email'],
        id: response.data['id'],
        nomeCompleto: response.data['nomeCompleto'],
        telefone: response.data['telefone']);
    print(nutricionista.toJson());
    return nutricionista;
  }
}