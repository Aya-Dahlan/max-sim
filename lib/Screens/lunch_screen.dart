
import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {

  @override
  _LunchScreenState createState() => _LunchScreenState();

}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration( seconds: 3),(){
      Navigator.pushReplacementNamed((context), '/login_screen');
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("images/maxsim-logo-02@0.25x.png"),
      ),
    );
  }
}
