import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/take_attendence_screen.dart';
import 'package:school_teacher_app/screens/view_attendence.dart';

class AttendenceScreen extends StatelessWidget {
  const AttendenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Attendence",
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TakeAttendence()),
                      );
                    },
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: homeScreenCardBgColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          children: [
                            TextSpan(
                              text: 'Take Attendance  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.calendar_month_outlined,
                                color: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewAttendence()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: homeScreenCardBgColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          children: [
                            TextSpan(
                              text: 'View Attendance  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.calendar_month_outlined,
                                color: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
