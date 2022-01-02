// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputValue extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String text;
  final IconData icon;
  final TextInputType textType;
  final bool obscureText;
  final String? Function(String?) validator;

  InputValue({
    required this.onChanged,
    required this.text,
    required this.icon,
    required this.textType,
    required this.obscureText,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: textType,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.red,
          ),
          labelText: text,
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
