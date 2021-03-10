import 'package:flutter/material.dart';
import '../constants/textStyle_constants.dart';
import './confirm_account_widgets.dart';

class AccountsPageOptions extends StatelessWidget {
  const AccountsPageOptions({
    this.icon,
    this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget accountPageHeaderContainer() {
  return Container(
    padding: EdgeInsets.only(
      left: 20,
      right: 20,
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AccountDetailsRow(),
        SizedBox(height: 30),
        Text(
          'General',
          style: lightBlackTextStyle,
        )
      ],
    ),
  );
}
