import 'package:flutter/material.dart';

InputBorder RoundedInput({
  Color color = Colors.blueAccent,
  double radius = 4,
  double width = 2,
}) =>
    OutlineInputBorder(
      borderSide: BorderSide(width: width, color: color),
      borderRadius: BorderRadius.circular(radius),
    );
