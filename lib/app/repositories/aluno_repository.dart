import 'package:dio/dio.dart';
import 'package:ilera/app/models/imagem_model.dart';
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

  Future<AlunoModel> cadastro(
      String nomeCompleto,
      String senha,
      String email,
      String genero,
      String cpf,
      String telefone,
      ImagemModel fotoDePerfil,
      ImagemModel fotoDeFrente,
      ImagemModel fotoDeCostas,
      double peso,
      double altura,
      double cintura,
      double pescoco,
      String plano) async {
    final Map<String, dynamic> bodyRequest = {
      "nomeCompleto": nomeCompleto,
      "senha": senha,
      "email": email,
      "genero": genero,
      "cpf": cpf,
      "telefone": telefone,
      "fotoDePerfil": fotoDePerfil,
      "fotoDeFrente": fotoDeFrente,
      "fotoDeCostas": fotoDeCostas,
      "peso": peso,
      "altura": altura,
      "cintura": cintura,
      "pescoco": pescoco,
      "plano": plano
    };
    JsonWebTokenModel jwt = await _token.getToken();
    final Map<String, dynamic> headersRequest = {
      "Authorization": "Bearer ${jwt.jwt}",
    };
    var response;
    try {
      response = await _dio.post('/usuarios/alunos/registrar',
          data: bodyRequest, options: Options(headers: headersRequest));
    } catch (e) {
      print('Uma exception foi encontrada...');
    } finally {
      print(response.data);
      AlunoModel aluno = new AlunoModel(
          nomeCompleto: response.data['nomeCompleto'],
          email: response.data['email'],
          genero: response.data['genero'],
          cpf: response.data['cpf'],
          telefone: response.data['telefone'],
          fotoDePerfil: response.data['fotoDePerfil'],
          fotoDeFrente: response.data['fotoDeFrente'],
          fotoDeCostas: response.data['fotoDeCostas'],
          peso: response.data['peso'],
          altura: response.data['peso'],
          cintura: response.data['cintura'],
          pescoco: response.data['pescoco'],
          plano: response.data['plano']);
      // ignore: control_flow_in_finally
      return aluno;
    }
  }
}
