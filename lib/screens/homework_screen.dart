import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class HomeworkScreen extends StatefulWidget {
  const HomeworkScreen({Key? key}) : super(key: key);

  @override
  State<HomeworkScreen> createState() => _HomeworkScreenState();
}

class _HomeworkScreenState extends State<HomeworkScreen> {
  final now = DateTime.now();
  List<Student> students = allStudent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homework",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Roll No.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: subtitleColor,
                        // fontWeight: FontWeight.bold,
                        // fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text(
                      'PDF',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: subtitleColor,
                        // fontWeight: FontWeight.bold,
                        // fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Download',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: subtitleColor,
                        // fontWeight: FontWeight.bold,
                        // fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            '${student.rollNo}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: titleColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // color: Colors.amber,
                            children: [
                              Text(
                                '${student.studentName}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: subtitleColor,
                                  // fontWeight: FontWeight.bold,
                                  // fontSize: 20,
                                ),
                              ),
                              Text(
                                '$now',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: subtitleColor,
                                  // fontWeight: FontWeight.bold,
                                  // fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: Icon(
                          Icons.download,
                          color: Color.fromARGB(
                            255,
                            12,
                            164,
                            100,
                          ),
                        )),
                      ),
                    ],
                  ),
                );

                //  Card(
                //   elevation: 0,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 8.0,
                //       vertical: 16,
                //     ),
                //     child: Container(
                //       decoration: BoxDecoration(
                //           // color: Colors.amber,
                //           ),
                //       child: Row(
                //         children: [
                //           SizedBox(
                //             width: MediaQuery.of(context).size.width * 0.2,
                //             child: Text(
                //               "${student.rollNo}",
                //               textAlign: TextAlign.left,
                //               style: TextStyle(fontSize: 18),
                //             ),
                //           ),
                //           SizedBox(
                //             child: Text(
                //               "${student.studentName}",
                //               textAlign: TextAlign.left,
                //               style: TextStyle(fontSize: 16),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
