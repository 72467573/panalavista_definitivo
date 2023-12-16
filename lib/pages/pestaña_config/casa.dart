import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/crear.dart';

class Mycasa extends StatefulWidget {
  const Mycasa({super.key});

  @override
  State<Mycasa> createState() => _MycasaState();
}

class _MycasaState extends State<Mycasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const P_crear()));
                  },
                  child: Text('Crearte')),
              ElevatedButton(onPressed: () {}, child: Text('Read')),
              ElevatedButton(onPressed: () {}, child: Text('Update')),
              ElevatedButton(onPressed: () {}, child: Text('Delete')),
            ],
          ),
        ));
  }
}
