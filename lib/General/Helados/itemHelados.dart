import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryH with ChangeNotifier {
  String image;
  String title;
  String tag;

  CategoryH({
    required this.image,
    required this.title,
    required this.tag,
  });
}

List<CategoryH> categoryHList = [
  CategoryH(
      image: 'lib/assets/images/Gelato.png', title: 'Gelatos', tag: 'gelato'),
  CategoryH(
      image: 'lib/assets/images/Sorbeto.png',
      title: 'Sorbetos',
      tag: 'sorbeto'),
  CategoryH(
      image: 'lib/assets/images/Gelato.png',
      title: 'Especiales',
      tag: 'especiales'),
];
