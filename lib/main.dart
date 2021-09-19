import 'package:flutter/material.dart';
import 'package:rashtro_flutter/Screeens/HomeScreen.dart';
import 'package:rashtro_flutter/Screeens/IssueProblem.dart';
import 'package:rashtro_flutter/Utils/ColorList.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
        appBarTheme: AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white)),
        fontFamily: "serif",
        scaffoldBackgroundColor: Colors.green[100],
      ),
      debugShowCheckedModeBanner: false,
      title: "রাষ্ট্র",
      home: HomeScreen()));
}
