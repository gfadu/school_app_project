import 'package:flutter/material.dart';

var bigBoldTextStyle = TextStyle(
  fontSize: 30,
);

var boldBlackTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

var lightBlackTextStyle = TextStyle(
  color: Colors.black12,
  fontSize: 20,
);

var whiteText = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

var boldWhiteTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

var containerDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/container_Bg.png'),
    fit: BoxFit.cover,
  ),
);

var smallBlackText = TextStyle(
  color: Colors.black,
  fontSize: 14,
);

var smallBoldBlackTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);
