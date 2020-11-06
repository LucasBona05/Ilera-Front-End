// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$nomeCompletoAtom = Atom(name: '_CadastroControllerBase.nomeCompleto');

  @override
  TextEditingController get nomeCompleto {
    _$nomeCompletoAtom.reportRead();
    return super.nomeCompleto;
  }

  @override
  set nomeCompleto(TextEditingController value) {
    _$nomeCompletoAtom.reportWrite(value, super.nomeCompleto, () {
      super.nomeCompleto = value;
    });
  }

  final _$senhaAtom = Atom(name: '_CadastroControllerBase.senha');

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

  final _$confirmSenhaAtom = Atom(name: '_CadastroControllerBase.confirmSenha');

  @override
  TextEditingController get confirmSenha {
    _$confirmSenhaAtom.reportRead();
    return super.confirmSenha;
  }

  @override
  set confirmSenha(TextEditingController value) {
    _$confirmSenhaAtom.reportWrite(value, super.confirmSenha, () {
      super.confirmSenha = value;
    });
  }

  final _$emailAtom = Atom(name: '_CadastroControllerBase.email');

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

  final _$generoAtom = Atom(name: '_CadastroControllerBase.genero');

  @override
  TextEditingController get genero {
    _$generoAtom.reportRead();
    return super.genero;
  }

  @override
  set genero(TextEditingController value) {
    _$generoAtom.reportWrite(value, super.genero, () {
      super.genero = value;
    });
  }

  final _$cpfAtom = Atom(name: '_CadastroControllerBase.cpf');

  @override
  TextEditingController get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(TextEditingController value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$telefoneAtom = Atom(name: '_CadastroControllerBase.telefone');

  @override
  TextEditingController get telefone {
    _$telefoneAtom.reportRead();
    return super.telefone;
  }

  @override
  set telefone(TextEditingController value) {
    _$telefoneAtom.reportWrite(value, super.telefone, () {
      super.telefone = value;
    });
  }

  final _$fotoDePerfilAtom = Atom(name: '_CadastroControllerBase.fotoDePerfil');

  @override
  TextEditingController get fotoDePerfil {
    _$fotoDePerfilAtom.reportRead();
    return super.fotoDePerfil;
  }

  @override
  set fotoDePerfil(TextEditingController value) {
    _$fotoDePerfilAtom.reportWrite(value, super.fotoDePerfil, () {
      super.fotoDePerfil = value;
    });
  }

  final _$fotoDeFrenteAtom = Atom(name: '_CadastroControllerBase.fotoDeFrente');

  @override
  TextEditingController get fotoDeFrente {
    _$fotoDeFrenteAtom.reportRead();
    return super.fotoDeFrente;
  }

  @override
  set fotoDeFrente(TextEditingController value) {
    _$fotoDeFrenteAtom.reportWrite(value, super.fotoDeFrente, () {
      super.fotoDeFrente = value;
    });
  }

  final _$fotoDeCostasAtom = Atom(name: '_CadastroControllerBase.fotoDeCostas');

  @override
  TextEditingController get fotoDeCostas {
    _$fotoDeCostasAtom.reportRead();
    return super.fotoDeCostas;
  }

  @override
  set fotoDeCostas(TextEditingController value) {
    _$fotoDeCostasAtom.reportWrite(value, super.fotoDeCostas, () {
      super.fotoDeCostas = value;
    });
  }

  final _$pesoAtom = Atom(name: '_CadastroControllerBase.peso');

  @override
  TextEditingController get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(TextEditingController value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  final _$alturaAtom = Atom(name: '_CadastroControllerBase.altura');

  @override
  TextEditingController get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(TextEditingController value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  final _$cinturaAtom = Atom(name: '_CadastroControllerBase.cintura');

  @override
  TextEditingController get cintura {
    _$cinturaAtom.reportRead();
    return super.cintura;
  }

  @override
  set cintura(TextEditingController value) {
    _$cinturaAtom.reportWrite(value, super.cintura, () {
      super.cintura = value;
    });
  }

  final _$pescocoAtom = Atom(name: '_CadastroControllerBase.pescoco');

  @override
  TextEditingController get pescoco {
    _$pescocoAtom.reportRead();
    return super.pescoco;
  }

  @override
  set pescoco(TextEditingController value) {
    _$pescocoAtom.reportWrite(value, super.pescoco, () {
      super.pescoco = value;
    });
  }

  final _$planoAtom = Atom(name: '_CadastroControllerBase.plano');

  @override
  TextEditingController get plano {
    _$planoAtom.reportRead();
    return super.plano;
  }

  @override
  set plano(TextEditingController value) {
    _$planoAtom.reportWrite(value, super.plano, () {
      super.plano = value;
    });
  }

  final _$registrarAlunoAsyncAction =
      AsyncAction('_CadastroControllerBase.registrarAluno');

  @override
  Future<AlunoModel> registrarAluno() {
    return _$registrarAlunoAsyncAction.run(() => super.registrarAluno());
  }

  @override
  String toString() {
    return '''
nomeCompleto: ${nomeCompleto},
senha: ${senha},
confirmSenha: ${confirmSenha},
email: ${email},
genero: ${genero},
cpf: ${cpf},
telefone: ${telefone},
fotoDePerfil: ${fotoDePerfil},
fotoDeFrente: ${fotoDeFrente},
fotoDeCostas: ${fotoDeCostas},
peso: ${peso},
altura: ${altura},
cintura: ${cintura},
pescoco: ${pescoco},
plano: ${plano}
    ''';
  }
}
