import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import './widget/grid_tile_category.dart';
import './model/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Care UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.reorder, size: 30),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[200], width: 3),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/luggy.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text('Hello,',
                    style: TextStyle(color: Colors.grey[400], fontSize: 20)),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Luqman Abdurrohman',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 40,
                  width: 340,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.grey[200], Colors.grey[300]],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.tealAccent[700],
                        ),
                        border: InputBorder.none,
                        hintText: 'Find doctor or hospital'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 444,
            width: double.infinity,
            //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 0,
                  ),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 20,
                        spreadRadius: 2.0,
                        offset: Offset(4, 3),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) {
                      return GridTileCategory(
                          categories[index].name,
                          categories[index].iconImage,
                          categories[index].backgroundColor);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      //bottom: 5,
                      right: 20,
                      left: 15,
                    ),
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Today's Appointment",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                            Icon(
                              Icons.more_vert,
                              color: Colors.grey[500],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[200],
                              width: 3,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(18),
                                    topLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Colors.tealAccent[700],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.today, color: Colors.white),
                                    Text(
                                      "Sunday,",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "22 Jun 2020",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.access_alarm,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "08:31 AM",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                //color: Colors.grey,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        border: Border.all(
                                          color: Colors.grey[300],
                                          width: 3,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: Image.asset(
                                          'images/doctor.jpeg',
                                          scale: 12,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Dr. Gavin Cross",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            )),
                                        Row(
                                          children: <Widget>[
                                            Text('Psychology',
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            SizedBox(
                                              width: 90,
                                            ),
                                            Text('FIRST VISIT',
                                                style: TextStyle(
                                                  color: Colors.tealAccent[700],
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 8,),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.pin_drop,
                                              size: 15,
                                              color: Colors.tealAccent[700],
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Santologius Hospital",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
