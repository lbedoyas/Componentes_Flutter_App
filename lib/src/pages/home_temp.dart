// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          height: 20,
          thickness: 10,
          color: Colors.blueAccent,
          indent: 20,
          endIndent: 20,
        ));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!!'),
            subtitle: Text('cualquier cosa'),
            leading: Icon(Icons.access_alarms_sharp),
            trailing: Icon(Icons.keyboard_alt),
            onTap: (() {}),
          ),
          Divider(
            height: 20,
            thickness: 10,
            color: Colors.blueAccent,
            indent: 20,
            endIndent: 20,
          )
        ],
      );
    }).toList();
  }
}
