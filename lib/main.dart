import 'package:betswinning/screens/dashScreen.dart';
import 'package:betswinning/screens/homeSreen.dart';
import 'package:betswinning/screens/loginScreen.dart';
import 'package:betswinning/screens/profileScreen.dart';
import 'package:betswinning/screens/profitsScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Betswinning());

class Betswinning extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Betswinning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.greenAccent,
          accentColor: Colors.greenAccent,
          cursorColor: Colors.greenAccent
      ),
      home: HomeScreen() ,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginScreen(),
        '/profile': (BuildContext context) => ProfileScreen(),
        '/profits': (BuildContext context) => ProfitsScreen(),
        '/home': (BuildContext context) => DashScreen(),
      },
    );
  }
}

