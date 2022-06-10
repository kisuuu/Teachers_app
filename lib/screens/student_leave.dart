import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/leave_model.dart';
import 'package:school_teacher_app/screens/dashboard.dart';
import 'package:school_teacher_app/screens/student_leave_view_list.dart';

class StudentLeaveList extends StatefulWidget {
  StudentLeaveList({Key? key}) : super(key: key);

  @override
  State<StudentLeaveList> createState() => _StudentLeaveListState();
}

class _StudentLeaveListState extends State<StudentLeaveList> {
  List<Leave> leaveNotice = allStudentLeaveNotice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Student's Leave",
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
              colors: [
                mainColor1,
                mainColor2,
              ],
            ),
          ),
        ),
        backgroundColor: transparentColor,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => Dashboard(),
        //       ),
        //     );
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios_new,
        //     size: 20,
        //   ),
        // ),
        // iconTheme: const IconThemeData(
        //   color: whiteColor,
        // ),
      ),
      body: ListView.builder(
        itemCount: leaveNotice.length,
        itemBuilder: (context, index) {
          final studentleavenotice = leaveNotice[index];
          return Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: homeScreenCardBgColor,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentLeaveView(
                            studentleavelist: studentleavenotice),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      border: Border.all(
                        width: 1,
                        color: borderColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 13.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${studentleavenotice.studentName}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    height: 2,
                                    wordSpacing: 2,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Text(
                                  "Class ${studentleavenotice.studentClass} / Dividion ${studentleavenotice.studentDivision}",
                                  style: TextStyle(
                                    color: subtitleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${studentleavenotice.date}",
                                  style: TextStyle(
                                    color: subtitleColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
