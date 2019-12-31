import 'package:tycoon_rpg/models/objeto.dart';

class Tropa extends Objeto{
  String nome;
  Map<String, int> atributos;
  bool monstro;
  int nivel;

  Tropa.guerreiro(){
    nome = "Guerreiro";
    monstro = false;
    atributos = {
      "Vida":5,
      "Dano":2,
      "Velocidade":2,
      "Alcance":1
    };
  }
  Tropa.arqueiro(){
    nome = "Arqueiro";
    monstro = false;
    atributos = {
      "Vida":1,
      "Dano":1,
      "Velocidade":3,
      "Alcance":5
    };
  }
  Tropa.mago(){
    nome = "Mago";
    monstro = false;
    atributos = {
      "Vida":1,
      "Dano":3,
      "Velocidade":2,
      "Alcance":4
    };
  }

  Tropa.monstro(var sprite, {String nome,Map<String,int> atributos}){
    this.nome = nome == null ? "monstro" : monstro;
    super.sprite = sprite;
    monstro = true;
    this.atributos = atributos == null ? {
      "Vida":4,
      "Dano":3,
      "Velocidade":1,
      "Alcance":2
    } : atributos;
  }
}