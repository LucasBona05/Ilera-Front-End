import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ilera/app/modules/cadastro/cadastro_controller.dart';
import 'package:ilera/app/utils/constants.dart';
import 'package:intl/intl.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

bool _showPassword = true;

String _senhaValidator;

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
  DateTime _dateTime;
  DateFormat dateFormat = new DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Constants.COLORS[5],
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Column(
                children: [
                  SizedBox(height: height * 0.06),
                  Image(
                    image: AssetImage('assets/images/png/nome.png'),
                  ),
                  SizedBox(height: height * 0.04),
                  Center(
                    child: Text(
                      'Cadastro',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        decoration: TextDecoration.underline,
                        color: Constants.COLORS[0],
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dados do Usuário',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  NomeInputButton(
                    height: height,
                    width: width,
                    controller: controller,
                    hint: 'Nome Completo'.toUpperCase(),
                  ),
                  SizedBox(height: height * 0.03),
                  EmailInputButton(
                    height: height,
                    width: width,
                    controller: controller,
                    hint: 'E-mail'.toUpperCase(),
                  ),
                  SizedBox(height: height * 0.03),

                  //Senha Input
                  SenhaInputButton(
                      height: height, width: width, controller: controller),
                  SizedBox(height: height * 0.03),
                  //Confirmar Senha
                  SenhaConfirmInputButton(
                      height: height, width: width, controller: controller),
                  SizedBox(height: height * 0.03),

                  //DatePicker
                  DatePickerInput(
                      height: height, width: width, controller: controller),
                  SizedBox(height: height * 0.03),
                  GeneroInputDrop(
                    height: height,
                    width: width,
                    controller: controller,
                  ),
                  SizedBox(height: height * 0.04),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Características',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  AlturaInputSlider(),
                  PesoInputSlider(),
                  CinturaInputSlider(),
                  PescocoInputSlider(),
                  SizedBox(height: height * 0.05),
                  MetaInputDrop(height: height, width: width),
                ],
              ),
              SizedBox(height: height * 0.08),
              Column(
                children: [
                  Center(
                    child: Text(
                      'Planos',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        decoration: TextDecoration.underline,
                        color: Constants.COLORS[0],
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  PlanosInputDrop(height: height, width: width),
                  SizedBox(height: height * 0.07),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Informações',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  //PESQUISAR E FAZER AS INFORMAÇÕES SEREM UMA LISTA DINÂMICA
                  PlansInformation(
                    width: width,
                    nomePlano: 'basic',
                    valorPlano: '9,90',
                  ),
                  SizedBox(height: height * 0.03),
                  PlansInformation(
                    width: width,
                    nomePlano: 'stardart',
                    valorPlano: '19,90',
                  ),
                  SizedBox(height: height * 0.03),
                  PlansInformation(
                    width: width,
                    nomePlano: 'premium',
                    valorPlano: '29,90',
                  )
                ],
              ),
              SizedBox(height: height * 0.08),
              Column(
                children: [
                  BotaoCadastro(width: width, height: height),
                  SizedBox(height: height * 0.03),
                  BotaoLogin(
                    height: height,
                    width: width,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NomeInputButton extends StatelessWidget {
  final String hint;
  final double height;
  final double width;
  final CadastroController controller;
  const NomeInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                color: Constants.COLORS[2],
                fontSize: Constants.REGISTER_FONT_SIZE),
          ),
          controller: this.controller.nomeCompleto,
          validator: (value) {
            if (value.isEmpty) {
              return "Preencha o campo!";
            }
            return null;
          },
        ),
      ),
    );
  }
}

class EmailInputButton extends StatelessWidget {
  final String hint;
  final double height;
  final double width;
  final CadastroController controller;
  const EmailInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                color: Constants.COLORS[2],
                fontSize: Constants.REGISTER_FONT_SIZE),
          ),
          controller: this.controller.email,
          validator: (value) {
            if (value.isEmpty) {
              return "Preencha o campo!";
            }
            return null;
          },
        ),
      ),
    );
  }
}

class SenhaInputButton extends StatefulWidget {
  final String hint;
  final double height;
  final double width;
  final CadastroController controller;
  const SenhaInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  _SenhaInputButtonState createState() => _SenhaInputButtonState();
}

class _SenhaInputButtonState extends State<SenhaInputButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: widget.width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, top: 14),
            border: InputBorder.none,
            hintText: "Senha".toUpperCase(),
            hintStyle: TextStyle(
              color: Constants.COLORS[2],
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword == false
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Constants.COLORS[1],
              ),
            ),
          ),
          obscureText: _showPassword,
          controller: this.widget.controller.senha,
          validator: (value) {
            if (value.isEmpty) {
              return "Preencha o campo!";
            } else {
              _senhaValidator = this.widget.controller.senha.text;
            }
            print(_senhaValidator);
            return null;
          },
        ),
      ),
    );
  }
}

class SenhaConfirmInputButton extends StatefulWidget {
  final String hint;
  final double height;
  final double width;
  final CadastroController controller;
  const SenhaConfirmInputButton({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
    this.hint,
  }) : super(key: key);

  @override
  _SenhaConfirmInputButtonState createState() =>
      _SenhaConfirmInputButtonState();
}

class _SenhaConfirmInputButtonState extends State<SenhaConfirmInputButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: widget.width * 0.9,
      decoration: BoxDecoration(
        color: Constants.COLORS[0],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, top: 14),
            border: InputBorder.none,
            hintText: "Confirme sua senha".toUpperCase(),
            hintStyle: TextStyle(
              color: Constants.COLORS[2],
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword == false
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Constants.COLORS[1],
              ),
            ),
          ),
          obscureText: _showPassword,
          controller: this.widget.controller.confirmSenha,
          validator: (value) {
            if (value.isEmpty) {
              return "Preencha o campo!";
            }
            if (value != _senhaValidator) {
              return "As senhas devem estar iguais!";
            }
            return null;
          },
        ),
      ),
    );
  }
}

class DatePickerInput extends StatefulWidget {
  final double height;
  final double width;
  final CadastroController controller;

  const DatePickerInput({
    Key key,
    @required this.height,
    @required this.width,
    @required this.controller,
  }) : super(key: key);

  @override
  _DatePickerInputState createState() => _DatePickerInputState();
}

class _DatePickerInputState extends State<DatePickerInput> {
  DateTime _dateTime;
  DateFormat dateFormat = new DateFormat("dd-MM-yyyy");
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 51,
        width: widget.width * 0.9,
        decoration: BoxDecoration(
          color: Constants.COLORS[0],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: Text(
                _dateTime == null
                    ? 'Data de Nascimento'.toUpperCase()
                    : dateFormat.format(_dateTime),
                style: TextStyle(
                    fontFamily: 'Futura',
                    color: Constants.COLORS[2],
                    fontSize: 16),
              ),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1940),
                        lastDate: DateTime(2021))
                    .then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            ),
          ),
        ));
  }
}

class GeneroInputDrop extends StatefulWidget {
  final double height;
  final double width;
  final CadastroController controller;
  GeneroInputDrop(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.controller})
      : super(key: key);
  @override
  _GeneroInputDropState createState() => _GeneroInputDropState();
}

class _GeneroInputDropState extends State<GeneroInputDrop> {
  String dropdownValue = 'Homem Cis'.toUpperCase();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, bottom: 8),
            child: Text(
              'Selecione seu gênero'.toUpperCase(),
              style: TextStyle(
                  color: Constants.COLORS[0],
                  fontSize: Constants.REGISTER_FONT_SIZE,
                  fontFamily: 'Futura'),
            ),
          ),
        ),
        Container(
          height: 51,
          width: widget.width * 0.9,
          decoration: BoxDecoration(
              color: Constants.COLORS[0],
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 11),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                    color: Constants.COLORS[1],
                    fontSize: Constants.REGISTER_FONT_SIZE,
                    fontFamily: 'Futura'),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    print(dropdownValue);
                    this.widget.controller.genero.text = dropdownValue;
                  });
                  print(this.widget.controller.genero.text);
                },
                items: <String>[
                  'Homem Cis'.toUpperCase(),
                  'Homem Trans'.toUpperCase(),
                  'Mulher Cis'.toUpperCase(),
                  'Mulher Trans'.toUpperCase(),
                  'Não-Binário'.toUpperCase()
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Constants.COLORS[2]),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AlturaInputSlider extends StatefulWidget {
  @override
  _AlturaInputSliderState createState() => _AlturaInputSliderState();
}

class _AlturaInputSliderState extends State<AlturaInputSlider> {
  int currentSliderValue = 150;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'altura(cm):'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  currentSliderValue.toString() + 'cm',
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Slider(
            activeColor: Constants.COLORS[2],
            inactiveColor: Constants.COLORS[6],
            value: currentSliderValue.toDouble(),
            min: 54,
            max: 240,
            onChanged: (double newValue) {
              setState(() {
                currentSliderValue = newValue.round();
              });
            })
      ],
    );
  }
}

class PesoInputSlider extends StatefulWidget {
  @override
  _PesoInputSliderState createState() => _PesoInputSliderState();
}

class _PesoInputSliderState extends State<PesoInputSlider> {
  double _currentSliderValue = 150;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'peso(kg):'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  _currentSliderValue.toStringAsFixed(1) + 'kg',
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Slider(
            activeColor: Constants.COLORS[2],
            inactiveColor: Constants.COLORS[6],
            value: _currentSliderValue,
            min: 30,
            max: 240,
            onChanged: (double newValue) {
              setState(() {
                _currentSliderValue = newValue;
              });
            })
      ],
    );
  }
}

class CinturaInputSlider extends StatefulWidget {
  @override
  _CinturaInputSliderState createState() => _CinturaInputSliderState();
}

class _CinturaInputSliderState extends State<CinturaInputSlider> {
  int currentSliderValue = 90;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'cintura(cm):'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  currentSliderValue.toString() + 'cm',
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Slider(
            activeColor: Constants.COLORS[2],
            inactiveColor: Constants.COLORS[6],
            value: currentSliderValue.toDouble(),
            min: 70,
            max: 130,
            onChanged: (double newValue) {
              setState(() {
                currentSliderValue = newValue.round();
              });
            })
      ],
    );
  }
}

class PescocoInputSlider extends StatefulWidget {
  @override
  _PescocoInputSliderState createState() => _PescocoInputSliderState();
}

class _PescocoInputSliderState extends State<PescocoInputSlider> {
  int currentSliderValue = 40;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'pescoço(cm):'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  currentSliderValue.toString() + 'cm',
                  style: TextStyle(
                      fontFamily: 'Futura',
                      color: Constants.COLORS[0],
                      fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Slider(
            activeColor: Constants.COLORS[2],
            inactiveColor: Constants.COLORS[6],
            value: currentSliderValue.toDouble(),
            min: 38,
            max: 45,
            onChanged: (double newValue) {
              setState(() {
                currentSliderValue = newValue.round();
              });
            })
      ],
    );
  }
}

class MetaInputDrop extends StatefulWidget {
  final double height;
  final double width;
  MetaInputDrop({Key key, @required this.height, @required this.width})
      : super(key: key);
  @override
  _MetaInputDropState createState() => _MetaInputDropState();
}

class _MetaInputDropState extends State<MetaInputDrop> {
  String dropdownValue = 'manter o peso'.toUpperCase();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, bottom: 8),
            child: Text(
              'Meta'.toUpperCase(),
              style: TextStyle(
                  color: Constants.COLORS[0],
                  fontSize: Constants.REGISTER_FONT_SIZE,
                  fontFamily: 'Futura'),
            ),
          ),
        ),
        Container(
          height: 51,
          width: widget.width * 0.9,
          decoration: BoxDecoration(
              color: Constants.COLORS[0],
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 11),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                    color: Constants.COLORS[1],
                    fontSize: Constants.REGISTER_FONT_SIZE,
                    fontFamily: 'Futura'),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'manter o peso'.toUpperCase(),
                  'perder peso'.toUpperCase(),
                  'ganhar peso'.toUpperCase(),
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Constants.COLORS[2]),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlanosInputDrop extends StatefulWidget {
  final double height;
  final double width;
  PlanosInputDrop({Key key, @required this.height, @required this.width})
      : super(key: key);
  @override
  _PlanosInputDropState createState() => _PlanosInputDropState();
}

class _PlanosInputDropState extends State<PlanosInputDrop> {
  String dropdownValue = 'visitante'.toUpperCase();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, bottom: 8),
            child: Text(
              'Escolha de planos'.toUpperCase(),
              style: TextStyle(
                  color: Constants.COLORS[0],
                  fontSize: Constants.REGISTER_FONT_SIZE,
                  fontFamily: 'Futura'),
            ),
          ),
        ),
        Container(
          height: 51,
          width: widget.width * 0.9,
          decoration: BoxDecoration(
              color: Constants.COLORS[0],
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 11),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                    color: Constants.COLORS[1],
                    fontSize: Constants.REGISTER_FONT_SIZE,
                    fontFamily: 'Futura'),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'visitante'.toUpperCase(),
                  'basic'.toUpperCase(),
                  'stardart'.toUpperCase(),
                  'premium'.toUpperCase()
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Constants.COLORS[2]),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlansInformation extends StatelessWidget {
  final String nomePlano, valorPlano;
  final double width;
  const PlansInformation({
    Key key,
    @required this.width,
    @required this.nomePlano,
    @required this.valorPlano,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Constants.COLORS[3], borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nomePlano.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Futura',
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    color: Constants.COLORS[0],
                    fontSize: 24,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'R\$' + valorPlano + '/',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'mês',
                      style: TextStyle(
                        fontFamily: 'Futura',
                        color: Constants.COLORS[0],
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              '- Personal',
              style: TextStyle(
                fontFamily: 'Futura',
                color: Constants.COLORS[0],
                fontSize: Constants.REGISTER_FONT_SIZE,
              ),
            ),
            Text(
              '- Yoga',
              style: TextStyle(
                fontFamily: 'Futura',
                color: Constants.COLORS[0],
                fontSize: Constants.REGISTER_FONT_SIZE,
              ),
            ),
            Text(
              '- 1 consultoria por vídeo/semana',
              style: TextStyle(
                fontFamily: 'Futura',
                color: Constants.COLORS[0],
                fontSize: Constants.REGISTER_FONT_SIZE,
              ),
            ),
            Text(
              '- Consultoria - 30min',
              style: TextStyle(
                fontFamily: 'Futura',
                color: Constants.COLORS[0],
                fontSize: Constants.REGISTER_FONT_SIZE,
              ),
            ),
            Text(
              '- 1 pergunta/semana',
              style: TextStyle(
                fontFamily: 'Futura',
                color: Constants.COLORS[0],
                fontSize: Constants.REGISTER_FONT_SIZE,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.7,
      height: 45,
      child: RaisedButton(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Constants.COLORS[2],
        textColor: Constants.COLORS[0],
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: Text(
          "login".toUpperCase(),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.7,
      height: 45,
      child: RaisedButton(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Constants.COLORS[6],
        textColor: Constants.COLORS[0],
        //TODO FAZER ROTA DE CADASTRO
        onPressed: () {},
        child: Text(
          "cadastro".toUpperCase(),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
