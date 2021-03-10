import 'package:flutter/material.dart';
import 'package:school_app_project/constants/color_constants.dart';
import './sucess_page.dart';
import 'package:school_app_project/widgets/general_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../constants/textStyle_constants.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
              'Verify your number',
              style: boldBlackTextStyle,
            ),
            Text('enter the otp sent to +919005175830'),
            SizedBox(
              height: 40,
            ),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: true,
              obscuringCharacter: '*',
              textStyle: TextStyle(
                color: Colors.white,
              ),
              onChanged: (value) {},
              pinTheme: PinTheme(
                activeFillColor: appBlueColor,
                activeColor: appBlueColor,
                selectedColor: Color(0xffEFF2F7),
                disabledColor: appBlueColor,
                inactiveColor: Color(0xffEFF2F7),
                inactiveFillColor: appBlueColor,
                selectedFillColor: appBlueColor,
                borderWidth: 0,
                fieldWidth: 40,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
              ),
              enableActiveFill: true,
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              onCompleted: (_) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
