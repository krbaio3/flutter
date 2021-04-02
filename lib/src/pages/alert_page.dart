import 'package:components/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  static final pageName = 'alert';
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        // child: TextButton(
        child: ElevatedButton(
            // child: OutlinedButton(
            // child: RaisedButton(
            child: Text('Mostrar Alerta'),
            onPressed: () => _mostrarAlerta(
                  context,
                ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  // side: BorderSide(color: Colors.red)
                )))
            // color: Colors.blue,
            // textColor: Colors.white,
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          print('Presionado Boton');
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
              // backgroundColor: Colors.green,
              title: Text('ok!'),
              content:
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Text('Este es el contenido de la alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancelar')),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    // onPressed: () =>
                    //     Navigator.pushReplacementNamed(context, '/'),
                    child: Text('Ok'))
              ],
            ));
  }
}
