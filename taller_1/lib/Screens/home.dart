import 'package:flutter/material.dart';
import 'package:taller_1/localstorage/Sharepreference.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String nombre = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController _textEditingController;
  final prefs = PrefernciaUsuario();

  @override
  void initState() {
    super.initState();
    prefs.ultimapagina = Home.nombre;

    _textEditingController = TextEditingController(text: prefs.nombre);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // para que no se vea la etiqueta en la esquina de debbug
      home: Scaffold(
        body: SafeArea(
          // CODIFICACION PAGINA HOME
          child: Center(
            child: Column(
              children: [
                Text("hola"),
                 Text("buenas")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
