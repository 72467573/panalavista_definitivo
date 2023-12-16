import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/valoracion_comen.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class MyValoracion extends StatelessWidget {
  const MyValoracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMENTARIOS"),
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: Container(
          color: const Color.fromARGB(255, 224, 169, 5),
          child: ListView(
            children: [
              _buildContainer(
                  "Jhon Fuentes", "Mejorarar  de la atencion", " ★ ★ ★"),
              _buildContainer(
                  "Branny Gomez", "Buena calidad y atencion", " ★ ★ ★ ★ ★"),
              _buildContainer(
                  "Jhan Rosas", "Muy calido la atencion", " ★ ★ ★ ★"),
              _buildContainer("Rosa Maria", "Excelente servicio", " ★ ★ ★ ★ ★"),
              _buildContainer("Oscar Vilchez", "Buena panaderia", " ★ ★ ★"),
              _buildContainer(
                  "Eliazar Mamani", "Calidad de panaderia", " ★ ★ ★ ★ ★"),
              _buildContainer("Kleyder Jara", "Excelente", " ★ ★ ★ ★ ★"),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.add_comment,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Comentar(),
          ));
        },
      ),
    );
  }

  Widget _buildContainer(String title, String location, String rating) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 179, 104, 6),
          Color.fromARGB(255, 185, 1, 1),
        ]),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 1,
          ),
        ],
      ),
      height: 120,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/perfil23.jpg",
            width: 100,
            height: 100,
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
                const SizedBox(
                  height: 10,
                ),
                Text(location),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  rating,
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
