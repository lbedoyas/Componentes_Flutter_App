import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumero = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumero[index];
          return FadeInImage(
            image: NetworkImage('http://picsum.photos/500/300/?image=$imagen'),
            placeholder: AssetImage('assets/img/spinning-loading.gif'),
          );
        },
        itemCount: _listaNumero.length);
  }
}
