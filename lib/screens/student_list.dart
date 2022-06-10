import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';
import 'package:school_teacher_app/screens/student_list_screen.dart';

class StudentsListScreen extends StatefulWidget {
  const StudentsListScreen({Key? key}) : super(key: key);

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
  final controller = TextEditingController();
  List<Student> students = allStudent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student List",
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
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: searchStudent,
              controller: controller,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blackColor,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: homeScreenCardBgColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search Student",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: searchBarTextColor,
                ),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: blackColor,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
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
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: AssetImage(
                                        "assets/images/profile_image.png"),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  StudentListPage(
                                                      studentlist: student),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "${student.studentName}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            // height: 2,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Gender: ${student.gender}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: greyColor,
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "  |  ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: greyColor,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Mob: ${student.mobNumber}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "DOB: ${student.dob}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: greyColor,
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "  |  ",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: greyColor,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "DOA: ${student.doa}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "${student.rollNo}",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void searchStudent(String query) {
    final suggestions = allStudent.where((student) {
      final studentName = student.studentName!.toLowerCase();
      final input = query.toLowerCase();

      return studentName.contains(input);
    }).toList();
    setState(() => students = suggestions);
  }
}
