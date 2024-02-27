  import 'package:flutter/material.dart';

Text cTextStyle(
          {required String text,
          required Color color,
          required double fontSize,
          FontWeight? fontWeight}) =>
      Text(
        text,
        style:
            TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
      );