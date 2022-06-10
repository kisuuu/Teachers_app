import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class StudentFeesScreen extends StatefulWidget {
  const StudentFeesScreen({Key? key}) : super(key: key);

  @override
  State<StudentFeesScreen> createState() => _StudentFeesScreenState();
}

class _StudentFeesScreenState extends State<StudentFeesScreen> {
  final controller = TextEditingController();
  List<Student> students = allStudent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student's Fees",
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
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
                  prefixIcon: Icon(
                    Icons.search,
                    size: 33,
                  ),
                  prefixIconColor: blackColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      "Roll No",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Student Name",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];
                    return Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 16,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.amber,
                              ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Text(
                                  "${student.rollNo}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  "${student.studentName}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 16),
                                ),
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
        ),
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
