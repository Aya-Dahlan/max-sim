import 'package:flutter/material.dart';
import 'package:max_sim/Rows.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "معلومات الاشتراك",
        style: TextStyle(
            fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5857d6),
        actions: [
          IconButton(icon: Icon(Icons.menu,
          size: 30,
          ), onPressed: (){}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Rows().row("الحملة", "wrrs4555"),

              SizedBox(
                height: 20,
              ),
              Rows().row("الرسائل", "500"),
              SizedBox(
                height: 20,
              ),
              Rows().row("المكالمات", "60"),
              SizedBox(
                height: 20,
              ),
              Rows().row("الانترنت", "50G"),
              SizedBox(
                height: 20,
              ),
              Rows().row("المدة", "30 يوم"),
              SizedBox(
                height: 20,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
