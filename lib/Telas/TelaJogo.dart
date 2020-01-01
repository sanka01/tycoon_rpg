import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/gestures.dart';
import 'package:tycoon_rpg/models/Construcao.dart';
import 'package:tycoon_rpg/models/ZonaConstrucao.dart';

class TelaJogo extends BaseGame {
  double tileSize;
  Grid grid;

  @override
  void render(Canvas canvas) {
    tileSize = size.width / 9;
    grid.render(canvas, tileSize);
  }

  @override
  void update(double t) {}

  TelaJogo() {
    grid = new Grid();
  }

  @override
  void resize(Size size) {
    this.size = size;
    super.resize(size);
  }
}

class Grid extends GestureDetector {
  List<ZonaConstrucao> grid;

  void render(Canvas canvas, tileSize) {
    for (int y = 0; y < 8; y++)
      for (int x = 0; x < 8; x++) {
        canvas.drawRect(
            Rect.fromLTWH(x * tileSize + tileSize / 2,
                y * tileSize + tileSize / 2, tileSize, tileSize),
            Paint()..color = this.grid[y].construcoes[x].cor);
        canvas.drawRect(
            Rect.fromLTWH(x * tileSize + tileSize / 2,
                y * tileSize + tileSize / 2, tileSize, tileSize),
            Paint()
              ..color = Color(0xFF0000FF)
              ..style = PaintingStyle.stroke);
      }
  }

  Grid() {
    this.grid = [
      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada()..cor = Colors.yellowAccent,
          Construcao.estrada()..cor = Colors.yellowAccent,
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada()
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada()..cor = Colors.yellowAccent,
          Construcao.estrada()..cor = Colors.yellowAccent,
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.estrada()
        ],

      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
      ZonaConstrucao()
        ..construcoes = [
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.estrada(),
          Construcao.estrada(),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown),
          Construcao.novo(Colors.brown)
        ],
    ];
//    this.grid = [
//      [
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada()..cor = Colors.yellowAccent,
//        Construcao.estrada()..cor = Colors.yellowAccent,
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada()
//      ],
//      [
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada()..cor = Colors.yellowAccent,
//        Construcao.estrada()..cor = Colors.yellowAccent,
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.estrada()
//      ],
//      [
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown)
//      ],
//      [
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown)
//      ],
//      [
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.estrada(),
//        Construcao.estrada(),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown),
//        Construcao.novo(Colors.brown)
//      ]
//    ];
  }

  @override
  get onTapDown => super.onTapDown;

  @override
  get onTapUp => super.onTapUp;

  void update(double t) {}
}
