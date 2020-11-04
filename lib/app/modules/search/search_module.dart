import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/search/search_controller.dart';
import 'package:ilera/app/modules/search/search_page.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SearchController(i<NutricionistaRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/search', child: (_, args) => SearchPage()),
      ];

  static Inject get to => Inject<SearchModule>.of();
}
