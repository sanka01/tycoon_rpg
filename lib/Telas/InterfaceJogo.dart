import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tycoon_rpg/Telas/TelaJogo.dart';

class Interface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Interface();
  }
}

class _Interface extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
              padding: EdgeInsets.only(right: 10, top: 4, bottom: 3),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width / 8,
                  height: MediaQuery.of(context).size.width / 8,
                  child: Timer2Min())),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10, top: 4, bottom: 10),
                child: Mostrador())
          ],
        ),
        body: Center(child: TelaJogo().widget),
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BotaoInterface(tipo: "Masmorra"),
                      BotaoInterface(tipo: "Reset"),
                      BotaoInterface(tipo: "Build"),
                    ],
                  ),
                ))),
        backgroundColor: Colors.transparent);
  }
}

class Timer2Min extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Timer2Min();
  }
}

class _Timer2Min extends State with TickerProviderStateMixin {
  double time = 0;
  double totalTime = 120;
  double progress = 0;
  var _controller;
  var _animation;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: progress,
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red[900]),
      strokeWidth: 5,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 30),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 120).animate(_controller)
      ..addListener(() {
        setState(() {
          time = _animation.value;
          progress = (time / totalTime);

          if (time >= totalTime) {
            _controller.reset();
            activateHord();
            _controller.forward();
          }
        });
      });

    _controller.forward();
  }

  activateHord() {}

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _animation.dispose();
    super.dispose();
  }
}

class BotaoInterface extends StatefulWidget {
  String tipo;

  BotaoInterface({this.tipo}) {}

  @override
  State<StatefulWidget> createState() {
    return _BotaoInterface(tipo);
  }
}

class _BotaoInterface extends State {
  Color cor;
  bool taped = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(2.5),
          child: Container(
            color: taped ? Colors.white : cor,
            height: MediaQuery.of(context).size.width / 3 - 8,
            width: MediaQuery.of(context).size.width / 3 - 8,
            child: Icon(Icons.details,
                size: MediaQuery.of(context).size.width / 5),
          )),
      onTapDown: (TapDownDetails details) {
        setState(() {
          taped = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          taped = false;
        });
      },
    );
  }

  _BotaoInterface(String tipo) {
    taped = false;
    switch (tipo) {
      case "Masmorra":
        cor = Colors.red;
        break;
      case "Reset":
        cor = Colors.yellowAccent;
        break;
      case "Build":
        cor = Colors.blue;
        break;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}

class Mostrador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Mostrador();
  }
}

class _Mostrador extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.green,
      height: 50,
      width: MediaQuery.of(context).size.width / 2.5,
    );
  }
}
