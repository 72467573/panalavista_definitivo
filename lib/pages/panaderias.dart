import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/Inicio2.dart';
import 'package:panalavista_definitivo/pages/crear_panaderia/crear_panaderia.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/expe1.2.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/expe1.4.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/pesta%C3%B1a_config.dart';
import 'package:panalavista_definitivo/pages/pestana_inicio2/Favoritos.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

final ScrollController _horizontal = ScrollController(),
    _vertical = ScrollController();

class MiPanaderia extends StatelessWidget {
  const MiPanaderia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuario"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CrearPanaderia(),
              ));
            },
            child: const Text(
              "Crear",
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 224, 169, 5),
        ),
        child: ListView(
          children: [
            _busquedad(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                _iconos(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Apartado2()));
                }, Icons.group_remove_rounded),
                _iconos(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Apartado2()));
                }, Icons.group_remove_rounded),
                _iconos(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Apartado2()));
                }, Icons.group_remove_rounded),
                _iconos(() {}, Icons.group_remove_rounded),
              ]),
            ),
            _buildContainer(
                "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Apartado4();
              }));
            }),
            _buildContainer(
                "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas", () {}),
            _buildContainer(
                "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Apartado4();
              }));
            }),
            _buildContainer(
                "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas", () {}),
            _buildContainer(
                "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Apartado4();
              }));
            }),
            _buildContainer(
                "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas", () {}),
            _buildContainer(
                "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Apartado4();
              }));
            }),
            _buildContainer(
                "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas", () {}),
            _buildContainer(
                "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas", () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Apartado4();
              }));
            }),
            _buildContainer(
                "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas", () {}),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 136, 59, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyLogeo()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyPestanaConfig()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyFavoritos()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(
    String title,
    String location,
    String rating,
    VoidCallback clikBoton2,
  ) {
    return GestureDetector(
        onTap: clikBoton2,
        child: Column(
          children: [
            Container(
              height: 120,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 128, 0, 0),
                    Color.fromARGB(255, 185, 136, 1)
                  ])),
              child: Row(
                children: [
                  Container(
                    width: 85,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/barco.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(location),
                        const SizedBox(height: 10),
                        Text(rating),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

Widget _busquedad() {
  final TextEditingController _control = TextEditingController();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: _control,
      decoration: InputDecoration(
        labelText: "Buscar entre panaderia",
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45.0),
            borderSide:
                BorderSide(color: Color.fromARGB(255, 112, 27, 1), width: 3)),
      ),
      onChanged: (query) {},
    ),
  );
}

Widget _iconos(
  VoidCallback clikBoton,
  IconData icon,
) {
  final TextEditingController _control = TextEditingController();
  return Container(
    width: 60,
    height: 60,
    margin: EdgeInsets.only(top: 10, bottom: 27, left: 20, right: 10),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 136, 59, 0),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      //border: Border.all(width: 3,color: const Color.fromARGB(255, 179, 0, 0,)),
    ),
    child: IconButton(
        icon: Icon(
          icon,
          color: Color.fromARGB(255, 240, 239, 239),
          size: 34,
        ),
        onPressed: clikBoton),
  );
}
