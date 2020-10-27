import 'package:dio/dio.dart';
import 'package:ilera/app/models/json_web_token_model.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/repositories/token_repository.dart';

class AlunoRepository {
  final Dio _dio;
  final TokenRepository _token;

  AlunoRepository([this._dio, this._token]);

  Future<AlunoModel> login(String email, String senha) async {
    print('FAZENDO O LOGIN DO ALUNO');
    final Map<String, dynamic> bodyRequest = {"email": email, "senha": senha};
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    var response;
    try {
      response = await _dio.post('/usuarios/alunos/login',
          data: bodyRequest, options: Options(headers: headersRequest));
    } catch (e) {
      print('Uma exception foi encontrada...');
    } finally {
      print(response.data);
      AlunoModel aluno = new AlunoModel(
        cpf: response.data['cpf'],
        email: response.data['email'],
        id: response.data['id'],
        genero: response.data['genero'],
        nomeCompleto: response.data['nomeCompleto'],
        telefone: response.data['telefone'],
        plano: response.data['plano'],
        peso: response.data['peso'],
        altura: response.data['altura'],
      );
      // ignore: control_flow_in_finally
      return aluno;
    }
  }
}
