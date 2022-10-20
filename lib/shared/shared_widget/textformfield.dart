import 'package:flutter/material.dart';

OutlineInputBorder textfield(Color color){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color)
                );
}