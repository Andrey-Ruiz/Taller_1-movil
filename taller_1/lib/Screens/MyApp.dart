import 'package:flutter/material.dart';
import 'package:taller_1/Screens/MyHomePage.dart';
import 'package:taller_1/Screens/Sesion.dart';
import 'package:taller_1/Screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // para que no se vea la etiqueta en la esquina de debbug
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Home.nombre,
      routes: {
        MyHomePage.nombre:(context) => MyHomePage(),
        Sesion.nombre:(context) => Sesion(),
        Home.nombre:(context) => Home(),
      },
     
    );
  }
}
