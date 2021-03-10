import 'package:flutter/material.dart';
import '../constants/textStyle_constants.dart';
import '../screens/my_account_page.dart';
import './confirm_account_widgets.dart';

Widget liveUpdateContainer({context, colors}) {
  return Container(
    // margin: EdgeInsets.only(right: 10),
    width: MediaQuery.of(context).size.width * 0.26,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.calendar_today_outlined,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '90%',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Attendance',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

class HomeworkContainer extends StatefulWidget {
  HomeworkContainer(this.title, this.subject);
  final String title, subject;

  @override
  _HomeworkContainerState createState() => _HomeworkContainerState();
}

class _HomeworkContainerState extends State<HomeworkContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffD3E0EA).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Checkbox(
              value: false,
              onChanged: (_) {
                setState() {}
              }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: smallBoldBlackTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.subject,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget homePageTopRow(context) {
  return Row(
    children: [
      ElevatedIconContainer(
        icon: Icons.calendar_today_outlined,
      ),
      SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monday',
            style: TextStyle(
              color: Colors.black12,
              fontSize: 14,
            ),
          ),
          Text(
            '25 October',
            style: boldBlackTextStyle,
          ),
        ],
      ),
      Spacer(),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => MyAccount(),
            ),
          );
        },
        child: Image.asset('assets/profile_img_large.png'),
      ),
    ],
  );
}
