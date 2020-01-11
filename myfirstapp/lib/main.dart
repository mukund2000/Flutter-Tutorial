import 'dart:math';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main()
{
  runApp(new myfirstapp());
}
class myfirstapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
      title: "My First Flutter App",
        home: Scaffold(
        appBar: AppBar(title: Text("My App"),),
    body: new Material(
    color: Colors.lightBlueAccent,
    child:Center(
    child:Text
    (
      generateluckynumber(),
    textDirection: TextDirection.ltr,
    style: TextStyle(color: Colors.white,fontSize: 40.0),
    ),
    ) ,
    ),
    )
    );
  }
}
String generateluckynumber()
{
  var random=Random();
  int Lucknumber=random.nextInt(10);
  return "your luck number is $Lucknumber";
}