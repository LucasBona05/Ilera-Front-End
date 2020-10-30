// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<TreinoRepository>(), i<DietaRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$getDietaAsyncAction = AsyncAction('_HomeControllerBase.getDieta');

  @override
  Future<DietaModel> getDieta(int id) {
    return _$getDietaAsyncAction.run(() => super.getDieta(id));
  }

  final _$getTreinoAsyncAction = AsyncAction('_HomeControllerBase.getTreino');

  @override
  Future<FichaDeTreinoModel> getTreino(int id) {
    return _$getTreinoAsyncAction.run(() => super.getTreino(id));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
