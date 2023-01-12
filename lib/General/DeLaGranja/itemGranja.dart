import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryG with ChangeNotifier {
  String image;
  String title;
  String tag;

  CategoryG({
    required this.image,
    required this.title,
    required this.tag,
  });
}

List<CategoryG> categoryGList = [
  CategoryG(
      image: 'lib/assets/images/Gelato.png', title: 'Gelatos', tag: 'gelato'),
  CategoryG(
      image: 'lib/assets/images/Sorbeto.png',
      title: 'Sorbetos',
      tag: 'sorbeto'),
  CategoryG(
      image: 'lib/assets/images/Esprciales.png',
      title: 'Especiales',
      tag: 'especiales'),
];
