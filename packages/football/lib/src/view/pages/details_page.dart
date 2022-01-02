// ignore_for_file: must_be_immutable, prefer_const_constructors, deprecated_member_use

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:football_package/src/view/models/game.dart';
import 'package:football_package/src/view/repository/game_data.dart';

class DetailsPage extends StatefulWidget {
  Game partida;
  DetailsPage({Key? key, required this.partida}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _handleBody(),
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
        actions: [
          IconButton(
              onPressed: _onDeletePressed,
              icon: FaIcon(
                FontAwesomeIcons.trashAlt,
                color: Colors.red,
              ))
        ]);
  }

  Widget _handleBody() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.partida.nomePartida,
            textAlign: TextAlign.center,
          ).headline3(Colors.black),
          SizedBox(height: Spacing.x9),
          Text(
            "Local: " + widget.partida.localPratica,
            textAlign: TextAlign.center,
          ).headline4(Colors.red),
          SizedBox(height: Spacing.x9),
          Text(
            "Quantidade de gols: " +
                widget.partida.quantGol.toString() +
                " gols",
            textAlign: TextAlign.center,
          ).headline4(Colors.red),
          SizedBox(height: Spacing.x9),
          Text(
            "Artilheiro do racha: " +
                widget.partida.nomeArtilheiro +
                " com " +
                widget.partida.quantGolsArtilheiro.toString() +
                " gols",
            textAlign: TextAlign.center,
          ).headline4(Colors.red),
        ],
      ),
    );
  }

  Future<dynamic> _onDeletePressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Você tem certeza?'),
        content: Text('Você ira excluir sua partida'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Cancelar'),
          ),
          FlatButton(
            onPressed: () {
              GameData.partidas.remove(widget.partida);
              Navigator.of(context).pushNamed(Routes.jogos);
            },
            child: Text('Excluir'),
          ),
        ],
      ),
    );
  }
}
