// ignore_for_file: prefer_const_constructors

import 'package:football_package/football.dart';

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WenFootballApp());
}

class WenFootballApp extends StatelessWidget {
  const WenFootballApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HelloPage(),
        routes: {
          Routes.home: (BuildContext context) => HelloPage(),
          Routes.login: (BuildContext context) => LoginPage(),
          Routes.jogos: (BuildContext context) => GamesPage(),
          Routes.cadastro: (BuildContext context) => CadastroPage(),
        },
      );
    });
  }
}
