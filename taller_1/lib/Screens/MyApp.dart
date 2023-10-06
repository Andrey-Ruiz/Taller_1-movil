import 'package:flutter/material.dart';
import 'package:taller_1/Screens/MyHomePage.dart';
import 'package:taller_1/Screens/Sesion.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Sesion.nombre,
      routes: {
        MyHomePage.nombre:(context) => MyHomePage(),
        Sesion.nombre:(context) => Sesion(),
      },
     
    );
  }
}
