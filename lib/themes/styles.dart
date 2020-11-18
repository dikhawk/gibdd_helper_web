import 'package:flutter/material.dart';

const navigationTextBarStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18,
    shadows: [
      defultTextShadow,
    ]);

const navigationTextBarFocusedStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFFdcd9e4),
    fontSize: 18,
    shadows: [
      defultTextShadow,
    ]);

const navigationTextBarSelectedStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFFFF9800),
    fontSize: 18,
    shadows: [
      defultTextShadow,
    ]);

const defultTextShadow = Shadow(
  offset: Offset(1.0, 1.0),
  blurRadius: 1.0,
  color: Color.fromARGB(50, 0, 0, 0),
);

const navigationTextBarHeaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 20,
    shadows: [
      Shadow(
        offset: Offset(1.0, 1.0),
        blurRadius: 1.0,
        color: Color.fromARGB(50, 0, 0, 0),
      ),
    ]);

const standardTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  color: Colors.black,
  fontSize: 20,
);

const standardTextBoldStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 20,
);

const standardTextItalicStyle = TextStyle(
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
  color: Colors.black,
  fontSize: 20,
);

const standardLittleTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  color: Colors.black,
  fontSize: 14,
);

const standardTextLittleBoldStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontSize: 14,
);
