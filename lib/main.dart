
//Adding Drop down Menu and changing state of the Menu.
//first Map the Menu item using map function and toList function
//change state using setSet function inside the property onChanged

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  var _currentCurrency="Rupee";
var _currencies=["Rupee","Dollar","Yen","Other"];
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
        DropdownButton<String>(
          items:_currencies.map((String item){
            return DropdownMenuItem<String>(
            value:item,
          child:Text(item),
          );
        }).toList(),
          onChanged: (String valueSelected){
            changeState(valueSelected); //separate function to change the state
            },
          value: _currentCurrency, // Selected Value from Drop down
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

      void changeState(String value)
      {
        setState(() {
          this._currentCurrency=value;
        });
      }

}