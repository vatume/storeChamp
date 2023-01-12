import 'package:flutter/material.dart';

const LISTA_COLORES = [
  [Color.fromARGB(255, 245, 197, 213), Color.fromARGB(255, 249, 214, 226)],
  [Color.fromARGB(255, 148, 221, 255), Color.fromARGB(255, 191, 231, 249)],
  [Color.fromARGB(255, 179, 247, 182), Color.fromARGB(255, 198, 252, 200)],
  [Color.fromARGB(255, 255, 255, 102), Color.fromARGB(255, 248, 246, 191)],
];

class ColorProvider extends ChangeNotifier {
  List<Color> colorSelect = LISTA_COLORES.first;
  changeColors(int index) {
    colorSelect = LISTA_COLORES[index];
    notifyListeners();
  }
}
