import 'package:flutter/material.dart';
import 'package:school_app_project/screens/notice_board_page.dart';
import '../widgets/general_widgets.dart';
import '../widgets/accounts_page_widget.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'My Account'),
      body: ListView(
        children: [
          accountPageHeaderContainer(),
          SizedBox(
            height: 20,
          ),
          AccountsPageOptions(
            icon: Icons.account_circle_outlined,
            title: 'About School',
          ),
          Divider(),
          AccountsPageOptions(
            icon: Icons.info_outline_rounded,
            title: 'About #School_app_project',
          ),
          Divider(),
          AccountsPageOptions(
            icon: Icons.info_outline_rounded,
            title: 'Terms & Conditions',
          ),
          Divider(),
          AccountsPageOptions(
            icon: Icons.info_outline_rounded,
            title: 'Privacy Policy',
          ),
          Divider(),
          AccountsPageOptions(
            icon: Icons.chat_bubble_outline,
            title: 'Support',
          ),
          Divider(),
          AccountsPageOptions(
            icon: Icons.logout,
            title: 'Log Out',
          ),
          Divider(),
        ],
      ),
    );
  }
}
