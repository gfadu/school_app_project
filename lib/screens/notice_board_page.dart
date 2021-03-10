import 'package:flutter/material.dart';
import 'package:school_app_project/widgets/general_widgets.dart';
import '../widgets/general_widgets.dart';

class NoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Notice Board',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 30,
        ),
        children: [
          NoticeBoardContainer(
            title: 'Holi Holiday',
            desc:
                'Activate every muscle group to get the results you’ve always wanted.',
            date: '15th March 2021',
          ),
          NoticeBoardContainer(
            title: 'Holi Holiday',
            desc:
                'Activate every muscle group to get the results you’ve always wanted.',
            date: '15th March 2021',
          ),
          NoticeBoardContainer(
            title: 'Holi Holiday',
            desc:
                'Activate every muscle group to get the results you’ve always wanted.',
            date: '15th March 2021',
          ),
          NoticeBoardContainer(
            title: 'Holi Holiday',
            desc:
                'Activate every muscle group to get the results you’ve always wanted.',
            date: '15th March 2021',
          ),
          NoticeBoardContainer(
            title: 'Holi Holiday',
            desc:
                'Activate every muscle group to get the results you’ve always wanted.',
            date: '15th March 2021',
          )
        ],
      ),
    );
  }
}
