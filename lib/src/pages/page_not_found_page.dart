import 'package:flutter/material.dart';

class PageNotFoundPage extends StatelessWidget {
  const PageNotFoundPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page not Found'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: FadeInImage(
              image: AssetImage('assets/error-404.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            ),
          ),
          Text(
            'Ruta no encontrada, contacte con el administrador',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: ElevatedButton(
              child: Text('Volver Menu Principal'),
              onPressed: () => Navigator.pushNamed(context, '/'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
