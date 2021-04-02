import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes Temp'),
        ),
        body: ListView(
          // children: _crearItems(),
          children: _crearItemsCorto(),
        ),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorto() {
    return opciones
        .map((String item) => Column(
              children: [
                ListTile(
                  leading: Icon(Icons.accessible_forward_outlined),
                  title: Text(item),
                  subtitle: Text('Cualquier cosa'),
                  trailing: Icon(Icons.close),
                  onTap: () => {print('$item')},
                  onLongPress: () => print('Presiona largo $item'),
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
