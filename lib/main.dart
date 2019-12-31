import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: MenuInicial(),

    ));

class MenuInicial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuInicialState();
}

class _MenuInicialState extends State<MenuInicial> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Menu Inicial"),
        ),
        body: Column(
          children: <Widget>[Text("OLA")],
        ),
      );
}
