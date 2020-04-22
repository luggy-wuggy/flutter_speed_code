import 'package:flutter/material.dart';

class Category {
  final String title;
  final String subTitle;
  final String image;
  final Color backgroundColor;
  final String time;

  Category(
      {this.title, this.subTitle, this.image, this.backgroundColor, this.time});
}

List<Category> categories = categoriesData
    .map((item) => Category(
          title: item['title'], 
          subTitle: item['subTitle'],
          image: item['image'],
          backgroundColor: item['color'],
          time: item['time'],
        ))
    .toList();

var categoriesData = [
  {
    "title": "Design Arts",
    "subTitle" : "Ultimate Design and Art Course",
    "image": 'images/ZombieingDoodle.png',
    "color": Colors.teal[200],
    "time": "15",
  },
  {
    "title": "Finance",
    "subTitle" : "Business Economy and Growth",
    "image": 'images/ReadingSideDoodle.png',
    "color": Colors.lightGreenAccent[100],
    "time": "20",
  },
  {
    "title": "Education",
    "subTitle" : "Academia and Teacher Training",
    "image": 'images/SitReadingDoodle-2.png',
    "color": Colors.teal[200],
    "time": "22",
  },
  {
    "title": "Social",
    "subTitle" : "Psychology and Social Think Tank",
    "image": 'images/CoffeeDoddle.png',
    "color": Colors.lightGreenAccent[100],
    "time": "23",
  },
];
