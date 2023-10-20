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
        /*floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.menu),
        ),*/
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
                      width: 300.5,
                      child: const TextField(
                        decoration:
                            InputDecoration(hintText: "  buscar el producto"),
                      ),
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

              const SizedBox(height: 20.0),

              // CONTAINER DE LOS DOS BOTONES DEBAJO DE LISTVIEW "cerca de mi" "categoria"
              Container(
                child: Row(
                  children: [
                    const SizedBox(width: 60.0),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.location_searching),
                        label: const Text('cerca de mi')),
                    const SizedBox(width: 50.0),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.category),
                        label: const Text('categoria')),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // no es necesario ponerle container
              const Text(
                'Explora tiendas..',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),

              // CONTAINER DEL LISTVIEW QUE VA DEBAJO DE LOS BOTONES, DONDE ESTAN LAS TIENDAS
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 100.0,
                      height: 150.0,
                      //color: Colors.amber,
                      child: Row(
                        children: [
                          // para el texto
                          const SizedBox(
                            width: 300.0,
                            height: 100.0,
                            child: Column(
                              children: [
                                Text(
                                    "Tienda parque central de Barranquilla, catalogada como una de las mejores.",
                                    textAlign: TextAlign.justify,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Ya sea que estés buscando articulos tecnologicos, electrónica, artículos para el hogar o regalos especiales, estamos aquí para colaborarte en todo lo que necesites.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          // para la imagen
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/776/776645.png'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 150.0,
                      //color: Colors.amber,
                      child: Row(
                        children: [
                          // para el texto
                          const SizedBox(
                            width: 300.0,
                            height: 100.0,
                            child: Column(
                              children: [
                                Text(
                                    "Tienda parque central de Barranquilla, catalogada como una de las mejores.",
                                    textAlign: TextAlign.justify,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Ya sea que estés buscando articulos tecnologicos, electrónica, artículos para el hogar o regalos especiales, estamos aquí para colaborarte en todo lo que necesites.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          // para la imagen
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/776/776645.png'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 150.0,
                      //color: Colors.amber,
                      child: Row(
                        children: [
                          // para el texto
                          const SizedBox(
                            width: 300.0,
                            height: 100.0,
                            child: Column(
                              children: [
                                Text(
                                    "Tienda parque central de Barranquilla, catalogada como una de las mejores.",
                                    textAlign: TextAlign.justify,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Ya sea que estés buscando articulos tecnologicos, electrónica, artículos para el hogar o regalos especiales, estamos aquí para colaborarte en todo lo que necesites.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          // para la imagen
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/776/776645.png'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 7.0),
              Container(
                width: 400.0,
                height: 80.0,
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.store),
                      label: 'Explorar',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.map),
                      label: 'Mapa',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
