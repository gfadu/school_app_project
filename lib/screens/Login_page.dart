import 'package:flutter/material.dart';
import 'package:school_app_project/screens/confirm_account_page.dart';
import '../widgets/general_widgets.dart';
import '../widgets/login_widgets.dart';
import '../constants/textStyle_constants.dart';
import '../constants/color_constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownvalue = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appTopContainer(),
            SizedBox(
              height: 20,
            ),
            Text(
              'WELCOME!',
              style: bigBoldTextStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'enter your registerd no.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: appBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: codePickerDropDown(dropdownvalue),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: phoneTextField(),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                backButton(context),
                Hero(
                  tag: 'confirmPageTarnsition',
                  child: AppButtons(
                    width: MediaQuery.of(context).size.width * 0.6,
                    title: 'Next',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfirmAccountPage(),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
