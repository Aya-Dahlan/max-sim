import 'package:flutter/material.dart';

class CodeScreen extends StatefulWidget {
  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  TextEditingController _codeTextEditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _codeTextEditingController = TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _codeTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset("images/maxim-logo-2@0.25x.png"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Code Number",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: _codeTextEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.only(start: 10),
                    hintText: "Enter code number",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff5857d6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff08cfcb),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // ignore: deprecated_member_use
              SizedBox(
                // ignore: deprecated_member_use
                width: 350,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    code();
                  },
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  child: Text(
                    "SUBMET",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void code(){
    if(_codeTextEditingController.text.isNotEmpty){
      Navigator.pushReplacementNamed((context), '/home_screen');
    }
  }
}
