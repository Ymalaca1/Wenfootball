// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:football_package/src/view/models/game.dart';
import 'package:football_package/src/view/repository/game_data.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _globalKey = GlobalKey<FormState>();
  String nome = '';
  String local = '';
  int quantGols = 0;
  String nomeArtilheiro = '';
  int quantGolsArtilheiro = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: _handleBody(),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Wenfootball',
        style: TextStyle(color: Colors.red),
      ).headline4(),
      leading: IconButton(
        color: Colors.red,
        icon: FaIcon(FontAwesomeIcons.times, size: Spacing.x3),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _handleBody() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _handleInput(),
          SizedBox(height: Spacing.x5),
          _handleButton()
        ],
      ),
    );
  }

  Widget _handleInput() {
    return Form(
      key: _globalKey,
      child: Container(
        child: Column(
          children: [
            InputValue(
              onChanged: (value) {
                setState(() {
                  nome = value;
                });
              },
              text: 'Nome da partida',
              icon: FontAwesomeIcons.futbol,
              textType: TextInputType.name,
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nome da partida invalido ou vazio';
                }
              },
            ),
            InputValue(
              onChanged: (value) {
                setState(() {
                  local = value;
                });
              },
              text: 'Local da partida',
              icon: FontAwesomeIcons.futbol,
              textType: TextInputType.name,
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Local da partida invalido ou vazio';
                }
              },
            ),
            InputValue(
              onChanged: (value) {
                setState(() {
                  quantGols =
                      int.tryParse(value) != null ? int.parse(value) : -1;
                });
              },
              text: 'Quantidade de gols',
              icon: FontAwesomeIcons.futbol,
              textType: TextInputType.number,
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty || quantGols < 0) {
                  return 'Quantidade de gols invalido ou vazio';
                }
              },
            ),
            InputValue(
              onChanged: (value) {
                setState(() {
                  nomeArtilheiro = value;
                });
              },
              text: 'Nome do Artilheiro',
              icon: FontAwesomeIcons.futbol,
              textType: TextInputType.name,
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nome do artilheiro invalido ou vazio';
                }
              },
            ),
            InputValue(
              onChanged: (value) {
                setState(() {
                  quantGolsArtilheiro =
                      int.tryParse(value) != null ? int.parse(value) : -1;
                });
              },
              text: 'Quantidade de gols do artilheiro',
              icon: FontAwesomeIcons.futbol,
              textType: TextInputType.number,
              obscureText: false,
              validator: (value) {
                if (value == null || value.isEmpty || quantGolsArtilheiro < 0) {
                  return 'Quantidade de gols invalido ou vazio';
                } else if (int.parse(value) > quantGols) {
                  return 'O artilheiro fez mais gols que teve no racha? Estranho!';
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _handleButton() {
    return PrincipalButton(
      color: Colors.black,
      text: "Cadastrar",
      onPressed: () {
        var _validate = _globalKey.currentState?.validate();
        if (_validate == true) {
          _cadastraPartida();
        }
      },
    );
  }

  void _cadastraPartida() {
    setState(
      () {
        GameData.partidas.add(
          Game(
            nomePartida: nome,
            localPratica: local,
            quantGol: quantGols,
            nomeArtilheiro: nomeArtilheiro,
            quantGolsArtilheiro: quantGolsArtilheiro,
          ),
        );
      },
    );
    Navigator.of(context).pushNamed(Routes.jogos);
  }
}
