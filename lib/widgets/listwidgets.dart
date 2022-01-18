import 'package:flutter/material.dart';

Widget listwidgets (Color color, String title)=> Container(
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(
      color: Colors.black26,
      width: 1.0,
      ),
      ),
  ),
  child: Center(
    child: Text(
      'title',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    ),
);