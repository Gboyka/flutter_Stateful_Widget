import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      title:"SateFul App",
      home:FavoriteCity(),

    )
  );


}


class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _FavoriteCityState();
  }


}


class _FavoriteCityState extends State<FavoriteCity>{
  String nameCity="";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title:Text("Fav City")
      ),
    body:Container(
      margin: EdgeInsets.all(20.0),
      child:Column(
        children: <Widget>[
          TextField(
            onChanged: (String userInput){
              setState(() {
                nameCity=userInput;
              });

            }
          ),
        Padding(
          padding: EdgeInsets.all(30.0),
        child:Text(
          "$nameCity",
          style: TextStyle(fontSize: 30.0),
        )

        )
        ],
      ),
    )
    );

      }


}