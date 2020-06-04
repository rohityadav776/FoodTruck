import 'package:flutter/material.dart';
//import 'ChatHomePage.dart';
import 'HomeFoodTruck.dart';


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    MaterialApp materialApp = new MaterialApp(
      title: "FoodTruck",
      home: new HomeFoodTruck()
      
    );

    return materialApp;
  }
}