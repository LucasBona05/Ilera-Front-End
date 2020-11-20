// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aluno_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AlunoController = BindInject(
  (i) => AlunoController(i<AlunoRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlunoController on _AlunoControllerBase, Store {
  final _$getAlunoByIdAsyncAction =
      AsyncAction('_AlunoControllerBase.getAlunoById');

  @override
  Future<AlunoModel> getAlunoById(int id) {
    return _$getAlunoByIdAsyncAction.run(() => super.getAlunoById(id));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
