import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/attendence.dart';
import 'package:school_teacher_app/screens/homework_screen.dart';
import 'package:school_teacher_app/screens/send_notice_screen.dart';
import 'package:school_teacher_app/screens/student_fees_screen.dart';
import 'package:school_teacher_app/screens/student_leave.dart';
import 'package:school_teacher_app/screens/student_list.dart';
import 'package:school_teacher_app/screens/timetable_screen.dart';

class ActivityList {
  final String title;
  final String subtitle;
  final String image;

  ActivityList(
      {required this.title, required this.subtitle, required this.image});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// https://youtu.be/18fGBnNMWqg
class _HomeScreenState extends State<HomeScreen> {
  List<ActivityList> activityLists = [
    // ActivityList(
    //   title: 'Students Doubts',
    //   subtitle: "View your students Attendancce",
    //   image: 'assets/images/doubts.png',
    // ),
    ActivityList(
      title: 'Students Fees',
      subtitle: 'View your students Attendancce',
      image: 'assets/images/fees.png',
    ),
    ActivityList(
      title: 'Students List',
      subtitle: 'View your students Attendancce',
      image: 'assets/images/studentlist.png',
    ),
    // ActivityList(
    //   title: 'Leave Updates',
    //   subtitle: '0 Todays No Leaves taken by Students',
    //   image: 'assets/images/leave.png',
    // ),
    ActivityList(
      title: 'Event & Programs',
      subtitle: 'View Events Update',
      image: 'assets/images/event.png',
    ),
    // ActivityList(
    //   title: 'Students Report card',
    //   subtitle: 'View Students Report Card',
    //   image: 'assets/images/report-card.png',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [mainColor1, mainColor2],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/schoolup_logo.png',
            ),
            opacity: 0.3,
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [mainColor1, mainColor2],
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              // padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/logiin_profile.png",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Mrs. Dipti Rathod",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Text(
                        //   "V th / B ,  Class Teacher",
                        //   style: TextStyle(
                        //     color: whiteColor,
                        //     // fontSize: 22,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AttendenceScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsActivity(
                                  image: 'assets/images/attendance.png',
                                  subtitle: 'View your students Attendence',
                                  title: 'Attendance',
                                )),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeworkScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsActivity(
                                  image: 'assets/images/Assignment.png',
                                  title: 'Homework',
                                  subtitle: 'View your students Homework',
                                )),
                            // InkWell(
                            //     onTap: () {
                            //       Navigator.of(context).push(
                            //         MaterialPageRoute(
                            //           builder: (context) => const SendNoticeScreen(),
                            //         ),
                            //       );
                            //     },
                            //     child: _forStudentsActivity(
                            //       image: 'assets/images/conference.png',
                            //       title: 'Notice',
                            //       subtitle: 'Send Notice to  your students',
                            //     )),

                            InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => const AttendenceScreen(),
                                //     ),
                                //   );
                                // },
                                child: _forStudentsActivity(
                              image: 'assets/images/report-card.png',
                              title: 'Report Card',
                              subtitle: 'View Students Report Card',
                            )),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      // color: Colors.amber,
                      // height: MediaQuery.of(context).size.height * 0.442,
                      // color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 13,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TimetableScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsNotification(
                                  image: 'assets/images/calendar.png',
                                  title: 'Time Table',
                                  subtitle: 'View your TimeTable',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const StudentFeesScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsNotification(
                                  image: 'assets/images/conference.png',
                                  title: 'Notice',
                                  subtitle: 'Send Notice to  your students',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const StudentFeesScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsNotification(
                                  image: 'assets/images/fees.png',
                                  title: 'Students Fees',
                                  subtitle: 'View your students Attendance',
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SendNoticeScreen(),
                                    ),
                                  );
                                },
                                child: _forStudentsNotification(
                                  image: 'assets/images/studentlist.png',
                                  title: 'Students List',
                                  subtitle: 'View your students Attendance',
                                ),
                              ),
                            ),

                            // InkWell(
                            //   onTap: () {
                            //     Navigator.of(context).push(
                            //       MaterialPageRoute(
                            //         builder: (context) => StudentLeaveList(),
                            //       ),
                            //     );
                            //   },
                            //   child: Padding(
                            //     padding: const EdgeInsets.symmetric(vertical: 8.0),
                            //     child: Container(
                            //       height: 70,
                            //       margin: const EdgeInsets.only(
                            //         left: 15,
                            //         right: 15,
                            //       ),
                            //       decoration: BoxDecoration(
                            //           border: Border.all(
                            //             width: 1,
                            //             color: homeScreenCardBorderColor,
                            //           ),
                            //           color: homeScreenCardBgColor,
                            //           borderRadius: BorderRadius.circular(10)),
                            //       child: Row(
                            //         children: [
                            //           _forStudentsNotification(
                            //             title: "Leave Updates",
                            //             image: "assets/images/leave.png",
                            //             subtitle: "View your students Attendance",
                            //           ),
                            //           const Icon(
                            //             Icons.arrow_forward_rounded,
                            //             color: greyColor,
                            //             // size: 20,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => StudentLeaveList(),
                                //     ),
                                //   );
                                // },
                                child: _forStudentsNotification(
                                  image: 'assets/images/event.png',
                                  title: 'Event & Programs',
                                  subtitle: 'View your students Attendance',
                                ),
                              ),
                            ),

                            // InkWell(
                            //   onTap: () {
                            //     Navigator.of(context).push(
                            //       MaterialPageRoute(
                            //         builder: (context) => const AttendenceScreen(),
                            //       ),
                            //     );
                            //   },
                            //   child: Padding(
                            //     padding: const EdgeInsets.symmetric(vertical: 8.0),
                            //     child: Container(
                            //       height: 70,
                            //       margin: const EdgeInsets.only(
                            //         left: 15,
                            //         right: 15,
                            //       ),
                            //       decoration: BoxDecoration(
                            //           border: Border.all(
                            //             width: 1,
                            //             color: homeScreenCardBorderColor,
                            //           ),
                            //           color: homeScreenCardBgColor,
                            //           borderRadius: BorderRadius.circular(10)),
                            //       child: Row(
                            //         children: [
                            //           _forStudentsNotification(
                            //             title: "Students Report card",
                            //             image: "assets/images/report-card.png",
                            //             subtitle: "View your students Attendance",
                            //           ),
                            //           InkWell(
                            //             onTap: () {
                            //               Navigator.of(context).push(
                            //                 MaterialPageRoute(
                            //                   builder: (context) =>
                            //                       const AttendenceScreen(),
                            //                 ),
                            //               );
                            //             },
                            //             child: const Icon(
                            //               Icons.arrow_forward_rounded,
                            //               color: greyColor,
                            //               // size: 20,
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: InkWell(
                                // onTap: () {
                                //   Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //       builder: (context) => const AttendenceScreen(),
                                //     ),
                                //   );
                                // },
                                child: _forStudentsNotification(
                                  image: 'assets/images/doubts.png',
                                  title: 'Students Doubts',
                                  subtitle: 'View your students Attendance',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _forStudentsActivity({
  required String title,
  required String image,
  required String subtitle,
}) {
  return Container(
    height: 170,
    margin: const EdgeInsets.only(left: 15),
    decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          // color: Colors.amber,
          color: homeScreenCardBorderColor,
        ),
        color: homeScreenCardBgColor,
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Column(
          children: [
            Container(
              // height: 150,
              width: 140,
              padding: const EdgeInsets.only(
                top: 10,
              ),
              // margin: EdgeInsets.only(left: 20),

              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Neumorphic(
                    style: const NeumorphicStyle(
                      depth: 4,
                      lightSource: LightSource.top,
                    ),
                    child: Container(
                      color: whiteColor,
                      height: 55,
                      width: 55,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          // "assets/images/calendar.png",
                          image,
                          fit: BoxFit.cover,
                          color: mainColor1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    // "Attendence",
                    title,
                    style: const TextStyle(
                      color: titleColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    // "View your students Attendance",
                    subtitle,
                    style: const TextStyle(
                      color: subtitleColor,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Icon(
          Icons.forward_sharp,
          size: 20,
        ),
      ],
    ),
  );
}

Widget _forStudentsNotification({
  required String title,
  required String image,
  required String subtitle,
}) {
  return Container(
    height: 70,
    margin: const EdgeInsets.symmetric(
      horizontal: 15,
    ),
    decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: homeScreenCardBorderColor,
        ),
        color: homeScreenCardBgColor,
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Expanded(
          // color: Colors.amber,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // color: whiteColor,
                        height: 55,
                        width: 55,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            image,
                            // "assets/images/doubts.png",
                            fit: BoxFit.cover,
                            color: mainColor1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          // "Students Doubts",
                          style: const TextStyle(
                            color: titleColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          subtitle,
                          // "View your students Attendancce",
                          style: const TextStyle(
                            color: subtitleColor,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward_rounded,
          color: greyColor,
          // size: 20,
        ),
      ],
    ),
  );
}
