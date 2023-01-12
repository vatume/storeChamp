import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category with ChangeNotifier {
  String image;
  String title;
  String tag;

  Category({
    required this.image,
    required this.title,
    required this.tag,
  });
}

List<Category> categoryList = [
  Category(
      image: 'lib/assets/images/helados.png', title: 'Helados', tag: 'helados'),
  Category(
      image: 'lib/assets/images/hortalizas.png',
      title: 'Frutos\n de la Tierra',
      tag: 'tierra'),
  Category(
      image: 'lib/assets/images/eggs.png',
      title: 'De la Granja',
      tag: 'granja'),
  Category(
      image: 'lib/assets/images/eggs.png',
      title: 'Alimentacion alternativa\n para aves',
      tag: 'alimentos'),
];
