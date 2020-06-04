import 'package:flutter/material.dart';
import 'FoodTruckLoginRegistration.dart';

class HomeFoodTruck extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    Scaffold scaffold = new Scaffold(
    appBar: AppBar(
      
      title: Text("Login/Registartion")
    ),
    body: new FoodTruckLoginRegistration()
    );
    return scaffold;
  }
}