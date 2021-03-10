import 'package:flutter/material.dart';
import 'package:school_app_project/screens/otp_page.dart';
import '../widgets/confirm_account_widgets.dart';
import '../widgets/general_widgets.dart';
import '../constants/textStyle_constants.dart';

class ConfirmAccountPage extends StatelessWidget {
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
            Text(
              'Choose the account',
              style: boldBlackTextStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Confirm your id',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            AccountDetailsRow(),
            Spacer(),
            Column(
              children: [
                Column(
                  children: [
                    Text('By continuing, you agree to the school_app_project'),
                    Text('Terms of service & Privacy Policy')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    backButton(context),
                    SizedBox(
                      width: 5,
                    ),
                    Hero(
                      tag: 'confirmPageTarnsition',
                      child: AppButtons(
                        width: MediaQuery.of(context).size.width * 0.8,
                        title: 'Accept & continue',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpPage(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
