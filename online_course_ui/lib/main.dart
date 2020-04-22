import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import './widget/category_tile.dart';
import './model/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.lightBlue[100]],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 35, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Luqman",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Monday, 20 April",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[400])),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/luggy.jpeg'))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.deepOrange[600],
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                        SizedBox(width: 8),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Courses",
                              hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.filter_list),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Colors.deepPurple[600],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.deepPurple[200],
                            Colors.deepPurple[50]
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Daily",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Text("Communication",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Text("Learning Course",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 25,
                                width: 80,
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(Icons.arrow_forward_ios,
                                        size: 10, color: Colors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 180,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      'images/StrollingDoodle-8.png')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "For you",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 215,
              //width: ,
              //width: double.infinity,
              child: Swiper(
                itemCount: 4,
                viewportFraction: 0.6,
                scale: 0.7,
                fade: 0.7,
                autoplay: true,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    categories[index].title,
                    categories[index].subTitle,
                    categories[index].image,
                    categories[index].backgroundColor,
                    categories[index].time,
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                height: 70,
                width: 280,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.home, color: Colors.grey[800], size: 25),
                            Icon(Icons.bubble_chart, color: Colors.grey[400], size:25),
                          ]
                        )
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.purple[900],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
