import 'package:flutter/material.dart';
import 'package:taller_1/localstorage/Sharepreference.dart';

class Sesion extends StatefulWidget{
  const Sesion({super.key});
  static const String nombre = 'inicio_S';

  @override
  State<Sesion> createState() => _SesionState();
}

class _SesionState extends State<Sesion>{
  int _numero = 0;
  String _nombre = '';
  bool _ubi = false;
  late TextEditingController _textEditingController;
  final prefs = PrefernciaUsuario();
  
  @override
  void initState() {
    super.initState();
    prefs.ultimapagina = Sesion.nombre;
    _numero = prefs.numero;
    _ubi = prefs.ubi;
    _textEditingController = TextEditingController(
      text: prefs.nombre
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SafeArea(
            child:ListView(
              children: [
                Container(//LOGO
                  padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),                  
                  child: const Column(
                    children: [
                      Icon(
                        Icons.face,
                        color: Colors.red,
                        size: 100,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                  margin: const EdgeInsets.symmetric(horizontal: 300,), 
                  height: 50,    
                  color: Colors.grey,
                  child: Row(//NUMERO
                    children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 17),
                            child: const Text('+57'),
                          ),
                          Container(
                              child: const Text('|', style: TextStyle(color: Colors.black, fontSize: 25.0),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                  margin: const EdgeInsets.symmetric(horizontal: 300,), 
                  height: 50,    
                  color: Colors.grey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Escribe aqui tu numero';
                      }
                      return null;
                    },
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Escribe aqui tu numero'
                    ),
                  ),
                ),
                  ],
                ),
                SwitchListTile(value: _ubi,
                title: const Text('Activar ubicacion', style: TextStyle(color: Colors.black)), 
                onChanged: (value){
                  setState(() {
                    _ubi = value;
                    prefs.ubi = value;
                  });
                })
              ],
            )  
      ),   
    );
  }
}