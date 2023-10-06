import 'package:flutter/material.dart';
import 'package:taller_1/localstorage/Sharepreference.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  static const String nombre = 'Home';

  @override
  Widget build(BuildContext context) {

    return Scaffold( 
      appBar: AppBar(
        title: const Text(
          "Secun",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue ,
      ),
      body: SafeArea(
      
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:  const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hola'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
