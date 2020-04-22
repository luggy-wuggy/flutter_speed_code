import 'package:flutter/material.dart';

class Category {
  final String name;
  final Icon iconImage;
  final Color backgroundColor;

  Category(this.name, this.iconImage, this.backgroundColor);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['image'], item['color']))
    .toList();

var categoriesData = [
  {
    "name": "Consultation",
    "image": Icon(Icons.message, size: 17, color: Colors.tealAccent[700]),
    "color": Colors.teal[50],
  },
  {
    "name": "Apointment",
    "image": Icon(Icons.assignment_ind, size: 17, color: Colors.blue[300]),
    "color": Colors.blue[50],
  },
  {
    "name": "Hospital",
    "image": Icon(Icons.local_hospital, size: 17, color: Colors.amber),
    "color": Colors.amber[100],
  },
  {
    "name": "Medicine",
    "image": Icon(Icons.healing, size: 17, color: Colors.orange[900]),
    "color": Colors.orange[100],
  }
];


