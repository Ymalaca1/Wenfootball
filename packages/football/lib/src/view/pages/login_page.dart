// ignore_for_file: prefer_const_constructors

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(child: _handleBody()),
    );
  }

  Widget _handleBody() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      alignment: AlignmentDirectional.center,
      child: SingleChildScrollView(
        reverse: true,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/svg/02.png",
              height: 45.h,
            ),
            _handleLogin(),
            SizedBox(
              height: Spacing.x4,
            ),
            _handleButton()
          ],
        ),
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

  Widget _handleLogin() {
    return Container(
      padding: EdgeInsets.only(left: 2, right: 2, bottom: 2),
      color: Colors.white,
      child: _handleInput(),
    );
  }

  Widget _handleInput() {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          InputValue(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email invalido ou vazio';
              } else if (value.length < 5) {
                return 'Email muito curto';
              } else if (!value.contains("@")) {
                return 'Email sem o @';
              }
            },
            text: "Email",
            icon: Icons.email_sharp,
            textType: TextInputType.emailAddress,
            obscureText: false,
          ),
          InputValue(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Senha invalida ou vazia';
              } else if (value.length < 6) {
                return 'sua senha deve conter pelo menos 6 caracteres';
              } else if (!value.contains(RegExp(r'^[a-zA-Z0-9]+$'))) {
                return 'sua senha deve apenas letras e numeros';
              }
            },
            text: "Senha",
            icon: Icons.vpn_key_sharp,
            textType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ],
      ),
    );
  }

  Widget _handleButton() {
    return PrincipalButton(
        color: Colors.black,
        text: "Entrar",
        onPressed: () {
          var _validate = _globalKey.currentState?.validate();
          if (_validate == true) {
            Navigator.of(context).pushNamed(Routes.jogos);
          }
        });
  }
}
