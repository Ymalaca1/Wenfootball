// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:football_package/football.dart';
import 'package:football_package/src/view/models/game.dart';
import 'package:football_package/src/view/repository/game_data.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    final partidas = GameData.partidas;
    return Scaffold(
      appBar: _appBar(),
      body: _handleBody(partidas),
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
          _onBackPressed();
        },
      ),
      actions: [
        IconButton(
          color: Colors.red,
          icon: FaIcon(
            FontAwesomeIcons.plus,
            size: Spacing.x3,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.cadastro);
          },
        ),
      ],
    );
  }

  Widget _handleBody(partidas) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int partida) {
        return ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          leading: FaIcon(
            FontAwesomeIcons.futbol,
            size: Spacing.x3,
            color: Colors.red,
          ),
          title: Text(partidas[partida].nomePartida).headline4(Colors.black),
          trailing:
              Text(partidas[partida].localPratica).headline4(Colors.black),
          onTap: () {
            _mostrarDetalhes(partidas[partida]);
          },
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: partidas.length,
    );
  }

  dynamic _mostrarDetalhes(Game pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(partida: pagina),
      ),
    );
  }

  Future<dynamic> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Você tem certeza?'),
        content: Text('Você voltará para tela inicial'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Não'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.home);
              GameData.partidas.removeRange(0, GameData.partidas.length);
            },
            child: Text('Sim'),
          ),
        ],
      ),
    );
  }
}
