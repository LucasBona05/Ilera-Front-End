import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/app_widget.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_controller.dart';
import 'package:ilera/app/modules/cadastro/cadastro_controller.dart';
import 'package:ilera/app/modules/cadastro/cadastro_module.dart';
import 'package:ilera/app/modules/home/home_controller.dart';
import 'package:ilera/app/modules/home/home_module.dart';
import 'package:ilera/app/modules/login/login_controller.dart';
import 'package:ilera/app/modules/login/login_module.dart';
import 'package:ilera/app/modules/aluno_perfil/aluno_controller.dart';
import 'package:ilera/app/repositories/aluno_repository.dart';
import 'package:ilera/app/repositories/dieta_repository.dart';
import 'package:ilera/app/repositories/instrutor_repository.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:ilera/app/repositories/psicologo_repository.dart';
import 'package:ilera/app/repositories/token_repository.dart';
import 'package:ilera/app/utils/constants.dart';

import 'app_controller.dart';
import 'modules/aluno_perfil/aluno_module.dart';
import 'modules/intro/intro_module.dart';
import 'modules/search/search_controller.dart';
import 'modules/search/search_module.dart';
import 'modules/splash/splash_module.dart';
import 'modules/start/start_module.dart';
import 'repositories/treino_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((inject) => LoginController(inject.get<NutricionistaRepository>(),
            inject.get<AlunoRepository>())),
        Bind((inject) => CadastroController(inject.get<AlunoRepository>())),
        Bind((inject) => NutricionistaRepository(
            inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) => PsicologoRepository(
            inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) => InstrutorRepository(
            inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) =>
            AlunoRepository(inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) => AlunoController(inject.get<AlunoRepository>())),
        Bind((inject) => TokenRepository(inject.get<Dio>())),
        Bind((inject) => Dio(BaseOptions(baseUrl: Constants.API_URL))),
        Bind((inject) =>
            DietaRepository(inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) =>
            TreinoRepository(inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) => HomeController(
            inject.get<TreinoRepository>(), inject.get<DietaRepository>())),
        Bind((inject) => SearchController(
            inject.get<NutricionistaRepository>(),
            inject.get<InstrutorRepository>(),
            inject.get<PsicologoRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/splash', module: SplashModule()),
        ModularRouter('/intro', module: IntroModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/cadastro', module: CadastroModule()),
        ModularRouter('/search', module: SearchModule()),
        ModularRouter('/start', module: StartModule()),
        ModularRouter('/aluno', module: AlunoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
