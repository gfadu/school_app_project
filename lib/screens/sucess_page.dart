import 'dart:async';
import 'package:school_app_project/screens/home_page.dart';
import 'package:flutter/material.dart';
import '../constants/textStyle_constants.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/congrats_img.png',
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Sucessfully verified',
              style: boldBlackTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
