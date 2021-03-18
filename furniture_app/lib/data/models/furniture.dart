import 'package:flutter/material.dart';

class Furniture {
  final String name;
  final String imagePath;
  final String description;
  final double price;
  bool isFavorite;

  Furniture({
    @required this.name,
    @required this.imagePath,
    @required this.description,
    @required this.price,
    this.isFavorite = false,
  });
}
