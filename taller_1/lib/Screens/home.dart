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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.menu),
        ),
        body: SafeArea(
          // CODIFICACION PAGINA HOME
          child: Column(
            children: [
              Container(
                height: 60.0,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(Icons.search),
                    Container(
                      child: const TextField(
                        decoration:
                            InputDecoration(hintText: "  buscar el producto"),
                      ),
                      width: 300.5,
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    const Icon(Icons.notifications, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              // CONTAINER PARA LIST VIEW
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        child: Image.network(
                            'https://cdn.bitlysdowssl-aws.com/wp-content/uploads/2023/06/IVOO-IVOO-app-ofertas-promociones-televisores--696x392.jpg')),
                    const SizedBox(
                      width: 1.0,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://cdn.bitlysdowssl-aws.com/wp-content/uploads/2023/06/IVOO-IVOO-app-ofertas-promociones-televisores--696x392.jpg'),
                    ),
                    const SizedBox(
                      width: 1.0,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://cdn.bitlysdowssl-aws.com/wp-content/uploads/2023/06/IVOO-IVOO-app-ofertas-promociones-televisores--696x392.jpg'),
                    ),
                  ],
                ),
              ),
              
                      SizedBox(height: 20.0),
              // CONTAINER DE LOS DOS BOTONES DEBAJO DE LISTVIEW
              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 60.0),
                      Text("BOTON 1"),
                      SizedBox(width: 180.0),
                      Text("BOTON 2"),
                    ],
                  ),
                  color: Colors.grey,
                  width: 400,
                  height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
