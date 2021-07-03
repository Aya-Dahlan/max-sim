import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:max_sim/Screens/login_screen.dart';

import 'Screens/code_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/lunch_screen.dart';

void main(){
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,



      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen':(context)=>LunchScreen(),
        '/login_screen':(context)=>LoginScreen(),
        '/code_screen':(context)=>CodeScreen(),
        '/home_screen':(context)=>HomeScreen(),
      },
    );
  }
}
