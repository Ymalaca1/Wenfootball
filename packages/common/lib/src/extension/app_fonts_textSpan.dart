// ignore: file_names
// ignore_for_file: unnecessary_this, file_names

import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension AppFontsTextSpan on TextSpan {
  TextSpan headline1([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 5.66.h,
        height: 1.2,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan headline2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w800,
        fontSize: 4.43.h,
        height: 1.1,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan headline3([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 2.95.h,
        height: 1.3,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan headline4([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 2.46.h,
        height: 1.2,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan subtitle1([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.97.h,
        height: 1.5,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan subtitle2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan body1([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.97.h,
        height: 1.5,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan body2([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan button([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 1.72.h,
        height: 1.7,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan caption([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.47.h,
        height: 1.3,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }

  TextSpan overline([Color? color]) {
    final TextStyle textStyle = GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 1.23.h,
        height: 1.6,
        color: color ?? ColorPalette.neutral600);
    return TextSpan(
        text: this.text,
        children: this.children,
        style: textStyle.merge(this.style),
        recognizer: this.recognizer,
        mouseCursor: this.mouseCursor,
        onEnter: this.onEnter,
        onExit: this.onExit,
        semanticsLabel: this.semanticsLabel,
        locale: this.locale,
        spellOut: this.spellOut);
  }
}
