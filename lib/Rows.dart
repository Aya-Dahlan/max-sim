import 'package:flutter/material.dart';

class Rows {
  String text1;
  String text2;

  Rows({String text1, String text2}) ;

  Widget row (String text1,String text2){
    return Row(
      textDirection: TextDirection.rtl,
     // mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        Text(

          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          width: 150,

        ),
        Text(
          text2,

          //textAlign: TextAlign.,
          style: TextStyle(
            fontSize: 20,

          ),
        ),

      ],
    );
  }
  }
