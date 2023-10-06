import 'package:flutter/material.dart';
import 'package:taller_1/Screens/MyApp.dart';
import 'package:taller_1/localstorage/Sharepreference.dart';

void main() async {

  final prefs = PrefernciaUsuario();
  await prefs.initPrefs();
  
  runApp(const MyApp());
}