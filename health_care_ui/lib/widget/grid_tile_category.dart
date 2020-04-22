import 'package:flutter/material.dart';

class GridTileCategory extends StatelessWidget {

  final String _title;
  final Icon _iconImage;
  final Color _backgroundColor;

  GridTileCategory(this._title, this._iconImage, this._backgroundColor);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 15),
      height: 100,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey[300],
              spreadRadius: 0.4,
              blurRadius: 10,
              offset: Offset(5, 6))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: _backgroundColor,
              shape: BoxShape.circle,
            ),
            child: _iconImage,
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            _title,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
