import 'package:flutter/material.dart';

OutlineInputBorder outLineInputBorder({required Color color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color),
  );
}
