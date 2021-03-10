import 'package:flutter/material.dart';
import 'package:school_app_project/screens/notice_board_page.dart';
import '../widgets/general_widgets.dart';
import '../widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 10,
        ),
        children: [
          homePageTopRow(context),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'noticeBoardtransition',
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    pageBuilder: (_, __, ___) => NoticeBoard(),
                  ),
                );
              },
              child: NoticeBoardContainer(
                title: 'Holi Holiday',
                desc:
                    'Activate every muscle group to get the results you’ve always wanted.',
                date: '15th March 2021',
              ),
            ),
          ),
          appSectionHeaderText(
            title: 'Live Updates',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              liveUpdateContainer(
                context: context,
                colors: [
                  Color(0xffF15223),
                  Color(0xffFC575E),
                ],
              ),
              liveUpdateContainer(
                context: context,
                colors: [
                  Color(0xff5F72BE),
                  Color(0xff9921E8),
                ],
              ),
              liveUpdateContainer(
                context: context,
                colors: [
                  Color(0xffFFDD00),
                  Color(0xffFBB034),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          appSectionHeaderText(
            title: 'Homework',
          ),
          SizedBox(
            height: 20,
          ),
          HomeworkContainer(
            'Learn Chapter 5 with one Essay',
            'English / Today',
          ),
          HomeworkContainer(
            'Learn Chapter 5 with one Essay',
            'English / Today',
          ),
          HomeworkContainer(
            'Learn Chapter 5 with one Essay',
            'English / Today',
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(32),
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 14.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              tabs: <Widget>[
                Tab(
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_outlined,
                    size: 24.0,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
