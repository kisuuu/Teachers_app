import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/my_class_time_table.dart';
import 'package:school_teacher_app/screens/my_time_table.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Time Table",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [mainColor1, mainColor2],
              ),
            ),
          ),
          backgroundColor: transparentColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
          ),
          iconTheme: const IconThemeData(
            color: whiteColor,
          ),
          // backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: whiteColor,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Row(
                children: [
                  Icon(
                    // Icons.format_list_bulleted_sharp,
                    Icons.format_list_bulleted_rounded,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // icon: Icon(Icons.format_list_bulleted_sharp),
                  Tab(
                    text: 'My Time Table',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    // Icons.format_list_bulleted_sharp,
                    Icons.format_list_bulleted_rounded,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // icon: Icon(Icons.format_list_bulleted_sharp),
                  Tab(
                    text: 'My Class Time Table',
                  ),
                ],
              ),
              // Tab(text: 'My Class Time Table'),
            ],
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.blue,
          ),
        ),
        body: TabBarView(
          children: [
            ExpansionPanelDemo(),
            MyClassTimeTable(),
          ],
        ),
      ),
    );
  }
}
