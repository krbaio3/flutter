import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliderPage extends StatefulWidget {
  static final pageName = 'slider';
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              Text('El value es ${_value.toInt().toString()}'),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
              // _crearImagen()
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
        max: 500.0,
        min: 0.0,
        mouseCursor: SystemMouseCursors.move,
        // divisions: 20,
        label: 'Slider',
        onChangeEnd: (double newValue) {
          print('Ended change on $newValue');
        },
        onChangeStart: (double startValue) {
          print('Started change at $startValue');
        },
        activeColor: Colors.yellow,
        inactiveColor: Colors.red,
        value: _value,
        onChanged: (_bloquearCheck
            ? null
            : (value) => setState(() => _value = value)));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/3f/16/18/3f1618d5c6ef5ba3ec94779f18da0cea.png'),
      width: _value,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(value: _bloquearCheck, onChanged: onChangeCheckBox);
    return CheckboxListTile(
        title: Text('Bloquear Slider (checkbox)'),
        value: _bloquearCheck,
        onChanged: onChangeCheckBox);
  }

  void onChangeCheckBox(valor) => setState(() {
        print(valor);
        _bloquearCheck = valor;
      });

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider (switch)'),
        value: _bloquearCheck,
        onChanged: onChangeCheckBox);
  }
}
