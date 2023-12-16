import 'package:flutter/material.dart';

class P_crear extends StatefulWidget {
  const P_crear({super.key});

  @override
  State<P_crear> createState() => _P_crearState();
}

class _P_crearState extends State<P_crear> {
  var namecontroller = TextEditingController();
  var pricecontroller = TextEditingController();
  var desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: namecontroller,
            decoration: const InputDecoration(
              hintText: "name here",
            ),
          ),
          TextField(
            controller: pricecontroller,
            decoration: const InputDecoration(
              hintText: "price here",
            ),
          ),
          TextField(
            controller: desccontroller,
            decoration: const InputDecoration(
              hintText: "desc here",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text('crear datos')),
        ],
      )),
    );
  }
}
