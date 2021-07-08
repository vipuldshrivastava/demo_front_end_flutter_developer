import 'package:dexter_hut/PROFILE.dart';
import 'package:flutter/material.dart';
import './CategoryScreen.dart';
import 'CarouselScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
      //home: CarouselScreen(),
      //home:CategoryScreen(),
      routes: {
        './CategoryScreen':(ctx)=>CategoryScreen(),
      },
    );
  }
}