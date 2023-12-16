import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class Apartado2 extends StatelessWidget {
  const Apartado2({super.key});

  final String imagaset = "assets/images/barco.jpg";

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: 1);
    final ScrollController _horizontal = ScrollController(),
        _vertical = ScrollController();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 56, 148, 209),
          child: Icon(
            Icons.star_border_purple500_sharp,
            size: 30,
          ),
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text("Catalogo de panes mas comprados"),
          backgroundColor: const Color.fromARGB(255, 136, 59, 0),
        ),
        drawer: Drawer(child: MyDrawer()),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                width: 360,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 212, 68, 1),
                      Color.fromARGB(255, 185, 136, 1)
                    ],
                    stops: [0.3, 0.75],
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                      apartados(
                          "Cachito", "3 panes por 1 sol", "ir a la tienda ",
                          () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration: duration,
                            reverseTransitionDuration: duration,
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ImageFullScreen(),
                              );
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ))));
  }

  Widget apartados(
      String title, String location, String rating, VoidCallback clikBoton2) {
    return Row(children: [
      Container(
        height: 190,
        width: 150,
        margin: EdgeInsets.only(top: 30, left: 16, right: 30, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(82, 0, 0, 0),
              offset: Offset(0, 0),
              blurRadius: 1,
            ),
          ],
        ),

        //controller: _horizontal,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 19, right: 7, left: 7),
            width: 120,
            height: 88,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(imagaset),
              fit: BoxFit.cover,
            )),
            child: GestureDetector(
              onTap: clikBoton2,
            ),
          ),
          Container(
            width: 170,
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            child: Text(
              'Panecillos que son muy sabrocillos',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ]),
      ),
      Container(
        height: 190,
        width: 150,

        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(82, 0, 0, 0),
              offset: Offset(0, 0),
              blurRadius: 1,
            ),
          ],
        ),

        //controller: _horizontal,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 19, right: 7, left: 7),
            width: 120,
            height: 91,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(imagaset),
              fit: BoxFit.cover,
            )),
            child: GestureDetector(
              onTap: clikBoton2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 40, right: 40),
            width: 170,
            child: Text(
              'Catalogo de los panes',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ]),
      )
    ]);
  }
}

// aqui voy aponer la clases para poder agrandar la imagen

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen({
    super.key,
  });

  final String imageaset = "assets/images/barco.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 212, 68, 1),
          title: Text('mi tienda'),
        ),
        body: SingleChildScrollView(
            child: SizedBox(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 212, 68, 1),
                Color.fromARGB(255, 185, 136, 1)
              ]),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(50),
                  child: Text(
                    'TIENDITA SAN MIGUEL',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Horario de atencion 6:00 am - 7pm',
                    style: TextStyle(
                        color: Color.fromARGB(255, 234, 234, 34), fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Mas cerca de ti',
                    style: TextStyle(
                        color: Color.fromARGB(255, 238, 97, 97), fontSize: 20),
                  ),
                ),
                Container(
                  child: Hero(
                    tag: 'my_image',
                    child: Image.asset(
                      imageaset,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.all(0),
                  child: Text(
                    'TIENDITA SAN MIGUEL',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 0),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
