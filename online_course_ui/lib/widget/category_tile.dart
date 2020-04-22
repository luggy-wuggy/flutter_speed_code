import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String _title;
  final String _subTitle;
  final String _image;
  final Color _backgroundColor;
  final String _time;

  CategoryTile(
    this._title,
    this._subTitle,
    this._image,
    this._backgroundColor,
    this._time,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.teal[200],
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [_backgroundColor, Colors.blueGrey[50]]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                _image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, top: 10, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _title,
                  style: TextStyle(
                    color: Colors.deepOrange[400],
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  _subTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.access_alarm, size: 15),
                    Text('$_time hours',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
