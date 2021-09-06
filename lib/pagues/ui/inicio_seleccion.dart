import 'package:flutter/material.dart';

class inicio_seleccion extends StatefulWidget {
  inicio_seleccion({Key? key}) : super(key: key);

  @override
  _inicio_seleccionState createState() => _inicio_seleccionState();
}

class _inicio_seleccionState extends State<inicio_seleccion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nuevo cliente',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Deudores'),
          ),
          body: Container(
            padding: EdgeInsets.all(30),
            height: double.infinity,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  _agregar_deudor(context),
                  _verlista(context),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _agregar_deudor(contex) {
    return Container(
        width: double.infinity,
        child: ClipRect(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue[300],
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            onPressed: () {
              print('nuevo cliente');

              Navigator.popAndPushNamed(context, "nuevocliente");
            },
            child: Container(
                child: Text(
              "1. Nuevo Prestamo",
            )),
          ),
        ));
  }

  Widget _verlista(contex) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20),
        child: ClipRect(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue[300],
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            onPressed: () {
              print('pasar a formulario de registro');
              // Navigator.popAndPushNamed(context, "Agregar");
            },
            child: Text("2. ver lista deudores"),
          ),
        ));
  }
}
