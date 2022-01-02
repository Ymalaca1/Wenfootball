// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class PrincipalButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;

  PrincipalButton(
      {required this.color,
      required this.text,
      required this.onPressed,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color,
              spreadRadius: 1,
            ),
          ],
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(200))),
      height: 48,
      child: TextButton(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.red,
            fontSize: 20,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
