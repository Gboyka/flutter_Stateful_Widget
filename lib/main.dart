
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"SateFul App",
      home:writeNote(),

    )
  );


}


class writeNote extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _onChangeNote();
  }


}


class _onChangeNote extends State<writeNote>{
  String write="";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title:Text("Write Note")
      ),
    body:Container(
      margin: EdgeInsets.all(20.0),
      child:Column(
        children: <Widget>[
          TextField(
            onChanged: (String userInput){
              setState(() {
                write=userInput;
              });

            }
          ),
        Padding(
          padding: EdgeInsets.all(30.0),
        child:Text(
          "$write",
          style: TextStyle(fontSize: 20.0),
        )

        )
        ],
      ),
    )
    );

      }


}