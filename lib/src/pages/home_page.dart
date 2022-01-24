import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/providers/menu_provider.dart';
import 'package:componentes_app/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print('menu =>  ${menuProvider.opciones}');
    // menuProvider.cargarData().then((opciones) {
    //   print('_lista');
    //   print(opciones);
    // });
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    // if (data == null) {
    //   return [];
    // }
    data?.forEach((opt) {
      print(opt['icon']);
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => AlertPage());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, opt['ruta']);
          });
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
