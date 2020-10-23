import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/app_widget.dart';
import 'package:ilera/app/modules/home/home_module.dart';
import 'package:ilera/app/modules/login/login_controller.dart';
import 'package:ilera/app/modules/login/login_module.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:ilera/app/repositories/token_repository.dart';
import 'package:ilera/app/utils/constants.dart';

import 'app_controller.dart';
import 'modules/intro/intro_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind(
            (inject) => LoginController(inject.get<NutricionistaRepository>())),
        Bind((inject) => NutricionistaRepository(
            inject.get<Dio>(), inject.get<TokenRepository>())),
        Bind((inject) => TokenRepository(inject.get<Dio>())),
        Bind((inject) => Dio(BaseOptions(baseUrl: Constants.API_URL))),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/splash', module: SplashModule()),
        ModularRouter('/intro', module: IntroModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
