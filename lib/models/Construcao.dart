import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tycoon_rpg/models/Local.dart';
import 'package:tycoon_rpg/models/Tropa.dart';

class Construcao {
  String nome;
  bool proximoNivel;
  int nivel;
  int custo;
  int vida;
  Color cor;
  Local local;
  int posicao;


  Construcao();

  Construcao.estrada(){
    this.cor = Colors.yellow;
    this.proximoNivel = false;
  }
  Construcao.novo(this.cor);

  calculaVida() => 10 * nivel;

  calculaCustoNivel(nv) => 10 * (pow(1.2, nv));

  calculaCustoEm(var nv) {
    var custo = 0;
    for (var x = 0; x < nv; x++) {
      custo += calculaCustoNivel(nivel + x);
    }
    return custo;
  }

  subirDeNivel(int qt) {
    nivel += qt;
    vida = calculaVida();
    custo = calculaCustoNivel(nivel);
  }
}

class Quartel extends Construcao{
  List<Tropa> tropas;
}
