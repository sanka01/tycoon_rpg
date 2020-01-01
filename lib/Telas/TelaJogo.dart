import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/gestures.dart';

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
  List<List> grid;

  void render(Canvas canvas, tileSize) {
    for (int y = 0; y < 8; y++)
      for (int x = 0; x < 8; x++) {
        canvas.drawRect(
            Rect.fromLTWH(x * tileSize + tileSize / 2,
                y * tileSize + tileSize / 2, tileSize, tileSize),
            Paint()
              ..color =
                  this.grid[y][x] == 0 ? Color(0xFF00FF00) : Colors.yellow);
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
      [0, 0, 0, 1, 1, 0, 0, 0],
      [0, 0, 0, 1, 1, 0, 0, 0],
      [0, 0, 0, 1, 1, 0, 0, 0],
      [1, 1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1, 1],
      [0, 0, 0, 1, 1, 0, 0, 0],
      [0, 0, 0, 1, 1, 0, 0, 0],
      [0, 0, 0, 1, 1, 0, 0, 0]
    ];
  }

  @override
  get onTapDown => super.onTapDown;

  @override
  get onTapUp => super.onTapUp;

  void update(double t) {}
}
