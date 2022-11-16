import 'package:flutter/material.dart';

Widget customListTile(article) {
  return Container(
    //height: 220.0,
    margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
    decoration: BoxDecoration(
      //color: Colors.green,
      image: DecorationImage(
          image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: TextStyle(
                  fontFamily: 'Roboto_Slab',
                  fontSize: 21.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 18.0),
            Text(
                  article.source.name,
                 // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Roboto_Slab',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              SizedBox(height: 9.0),
            ],
          ),
  ),
            ],
          ),
        );
}