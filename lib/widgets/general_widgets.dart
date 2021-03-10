import 'package:flutter/material.dart';
import '../constants/color_constants.dart';
import './confirm_account_widgets.dart';
import '../constants/textStyle_constants.dart';

Widget appTopContainer() {
  return Container(
    padding: EdgeInsets.all(10),
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: appBlueColor,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

class AppButtons extends StatelessWidget {
  const AppButtons({this.width, this.title, this.onPressed});
  final double width;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: appBlueColor,
      onPressed: onPressed,
      child: Row(
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

Widget backButton(context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: appBlueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
  );
}

Widget appBar({title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: ElevatedIconContainer(
      icon: Icons.arrow_back_ios,
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

class NoticeBoardContainer extends StatelessWidget {
  const NoticeBoardContainer({this.title, this.desc, this.date});
  final String title, desc, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: containerDecoration,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: boldWhiteTextStyle,
              ),
              Spacer(),
              containerButton(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              right: 40,
            ),
            child: Text(
              desc,
              style: whiteText,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                date,
                style: whiteText,
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget containerButton() {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      'Holiday',
      style: smallBlackText,
    ),
  );
}

Widget appSectionHeaderText({title}) {
  return Text(
    title,
    style: lightBlackTextStyle,
  );
}
