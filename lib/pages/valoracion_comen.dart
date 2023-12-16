import 'dart:io';
import 'package:panalavista_definitivo/pages/configuraciones.dart';
import 'package:panalavista_definitivo/pages/valoracion.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

int sum(int a, int b) {
  return a + b;
}

class Comentar extends StatefulWidget {
  const Comentar({super.key});

  @override
  State<Comentar> createState() => ComentarState();
}

bool click1 = true;
bool click2 = true;
bool click3 = true;
bool click4 = true;
bool click5 = true;

class ComentarState extends State<Comentar> {
  List<String> productosOfrecidos = [];
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    IconData vacio = Icons.star_border;
    String relleno = 'vacio';
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comentar :)"),
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: Color.fromARGB(255, 206, 163, 34),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 250,
                  padding:
                      EdgeInsets.only(bottom: 30, top: 30, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                      255,
                      179,
                      0,
                      0,
                    ),
                    border: Border.all(
                        width: 3,
                        color: const Color.fromARGB(
                          255,
                          179,
                          0,
                          0,
                        )),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                      "Las opiniones son publicas y anonimas y no contienen información personal ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 250, 247),
                          fontSize: 17)),
                ),

                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 30, top: 10, bottom: 10),
                      child: IconButton(
                          icon: Icon(
                            (click1 == false) ? Icons.star_border : Icons.star,
                            color: Color.fromARGB(255, 240, 239, 239),
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              click1 = !click1;
                              click2 = false;
                              click3 = false;
                              click4 = false;
                              click5 = false;
                            });
                          }),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: IconButton(
                          icon: Icon(
                            (click2 == false) ? Icons.star_border : Icons.star,
                            color: Color.fromARGB(255, 240, 239, 239),
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              click1 = true;
                              click2 = !click2;
                              click3 = false;
                              click4 = false;
                              click5 = false;
                            });
                          }),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: IconButton(
                          icon: Icon(
                            (click3 == false) ? Icons.star_border : Icons.star,
                            color: Color.fromARGB(255, 240, 239, 239),
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              click1 = true;
                              click2 = true;
                              click3 = !click3;
                              click4 = false;
                              click5 = false;
                            });
                          }),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: IconButton(
                          icon: Icon(
                            (click4 == false) ? Icons.star_border : Icons.star,
                            color: Color.fromARGB(255, 240, 239, 239),
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              click1 = true;
                              click2 = true;
                              click3 = true;
                              click4 = !click4;
                              click5 = false;
                            });
                          }),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: IconButton(
                          icon: Icon(
                            (click5 == false) ? Icons.star_border : Icons.star,
                            color: Color.fromARGB(255, 240, 239, 239),
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              click1 = true;
                              click2 = true;
                              click3 = true;
                              click4 = true;
                              click5 = !click5;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                _buildTextField("Describenos tu experiencia (opcional)"),

                SizedBox(height: 20),

                // Productos ofrecidos

                _buildTextnombre(),

                // Botón para guardar los datos
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 60),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          foregroundColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyValoracion()));
                        },
                        child: Text("cancelar"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 136, 59, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          foregroundColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyValoracion()));
                        },
                        child: Text("publicar"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String texto) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:
            Border.all(width: 3, color: const Color.fromARGB(255, 179, 0, 0)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        maxLines: 7,
        decoration: InputDecoration(
            labelText: texto, contentPadding: EdgeInsets.only(top: 0)),
        onChanged: (String value) async {
          if (value != '13') {
            return;
          }
        },
      ),
    );
  }

  Widget _buildTextnombre() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            width: 3,
            color: const Color.fromARGB(
              255,
              179,
              0,
              0,
            )),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: 'Agregar nombre (opcional)',
          contentPadding: EdgeInsets.only(top: 36, bottom: 20),
        ),
      ),
    );
  }
}
