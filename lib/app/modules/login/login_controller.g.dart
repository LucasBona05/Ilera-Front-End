// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$emailAtom = Atom(name: '_LoginControllerBase.email');

  @override
  TextEditingController get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(TextEditingController value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_LoginControllerBase.senha');

  @override
  TextEditingController get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(TextEditingController value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$nutricionistaAtom = Atom(name: '_LoginControllerBase.nutricionista');

  @override
  ObservableFuture<NutricionistaModel> get nutricionista {
    _$nutricionistaAtom.reportRead();
    return super.nutricionista;
  }

  @override
  set nutricionista(ObservableFuture<NutricionistaModel> value) {
    _$nutricionistaAtom.reportWrite(value, super.nutricionista, () {
      super.nutricionista = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void autenticarNutricionista() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.autenticarNutricionista');
    try {
      return super.autenticarNutricionista();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
nutricionista: ${nutricionista}
    ''';
  }
}
