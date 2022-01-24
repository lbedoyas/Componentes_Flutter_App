import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
  SlidePage({Key? key}) : super(key: key);

  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  double _valorSlider = 100.0;
  bool _bloquearcheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slides'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlide(),
            _crearCheckBox(),
            _crearSwtich(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlide() {
    return Slider(
        activeColor: Colors.green[300],
        label: 'tamaño de la imagen',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloquearcheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/550x/b6/d6/13/b6d61308f9e84af4f8d73a2b15f48fec.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //     value: _bloquearcheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearcheck = valor!;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearcheck,
        onChanged: (valor) {
          setState(() {
            _bloquearcheck = valor!;
          });
        });
  }

  Widget _crearSwtich() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearcheck,
        onChanged: (valor) {
          setState(() {
            _bloquearcheck = valor!;
          });
        });
  }
}
