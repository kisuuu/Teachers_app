import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class StudentListPage extends StatelessWidget {
  final Student studentlist;

  const StudentListPage({Key? key, required this.studentlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("#### ####,####,####", "en_US");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Student’s List",
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
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 232, 226, 226),
                              // color: Colors.black,
                              width: 1, //
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/profile_image.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${studentlist.studentName}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Class: ${studentlist.studentClass} | Roll no: ${studentlist.rollNo}",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                225, 119, 119, 119),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Mobile No",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Academic Year",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.mobNumber}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                            VerticalDivider(width: 1.0),
                            Expanded(
                              child: Text(
                                "${studentlist.academicYear}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Gender",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "GR No",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.gender}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                            VerticalDivider(width: 1.0),
                            Expanded(
                              child: Text(
                                "${studentlist.grNo}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Date of Admission ",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Date of Birth",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.doa}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                            VerticalDivider(width: 1.0),
                            Expanded(
                              child: Text(
                                "${studentlist.dob}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Parent Mail ID",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.parentEmailId}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Mother Name",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.motherName}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Father Name",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(225, 165, 165, 165),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${studentlist.fatheName}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(225, 50, 54, 67),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // Column(
                    //   children: [
                    //     Container(
                    //       padding: const EdgeInsets.only(
                    //         left: 20,
                    //         right: 20,
                    //       ),
                    //       width: double.infinity,
                    //       height: 50.0,
                    //       decoration: BoxDecoration(
                    //         gradient: LinearGradient(
                    //           begin: Alignment.centerLeft,
                    //           end: Alignment.centerRight,
                    //           colors: [mainColor1, mainColor2],
                    //         ),
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Text(
                    //             'Save Changes',
                    //             style: Theme.of(context)
                    //                 .textTheme
                    //                 .subtitle2!
                    //                 .copyWith(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 16.0,
                    //                   color: Colors.white,
                    //                 ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
