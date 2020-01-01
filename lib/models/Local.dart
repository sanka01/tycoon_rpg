import 'package:tycoon_rpg/models/Construcao.dart';

class Local {
  List<Construcao> construcoes; // tamanho 9
  List<bool> grid = List.filled(9, false);

  bool addConstrucao(Construcao construcao) {
    if (construcoes.length >= 9 || grid[construcao.posicao] == true) {
      return false;
    }
    construcoes.add(construcao);
    grid[construcao.posicao] = true;
    return true;
  }

}
