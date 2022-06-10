import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class TakeAttendence extends StatefulWidget {
  const TakeAttendence({Key? key}) : super(key: key);

  @override
  State<TakeAttendence> createState() => _TakeAttendenceState();
}

class _TakeAttendenceState extends State<TakeAttendence> {
  final controler = TextEditingController();
  List<Student> students = allStudent;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Take Attendence",
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Please Mark Absent Students",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            // TextField(
            //   onChanged: searchStudent,
            //   controller: controler,
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: blackColor,
            //   ),
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: homeScreenCardBgColor,
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //       borderSide: BorderSide.none,
            //     ),
            //     hintText: "Search Student",
            //     hintStyle: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: searchBarTextColor,
            //     ),
            //     prefixIcon: Icon(
            //       Icons.search,
            //       size: 33,
            //     ),
            //     prefixIconColor: blackColor,
            //   ),
            // ),
            SizedBox(
              height: 16,
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
                            // color: Colors.amber,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 4),
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
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: borderColor,
                        // color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Present",
                          style: TextStyle(
                            fontSize: 15,
                            color: subtitleColor,
                          ),
                        ),
                        Text(
                          "45",
                          style: TextStyle(
                            fontSize: 30,
                            color: subtitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        // color: Colors.amber,
                        color: borderColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Absent",
                          style: TextStyle(
                            fontSize: 15,
                            color: subtitleColor,
                          ),
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                            fontSize: 30,
                            color: subtitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [mainColor1, mainColor2],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Submit',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
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

  void searchStudent(String query) {
    final suggestions = allStudent.where((student) {
      final studentName = student.studentName!.toLowerCase();
      final input = query.toLowerCase();

      return studentName.contains(input);
    }).toList();
    setState(() => students = suggestions);
  }
}
// setState(() {
//                                       if (tempArray
//                                           .contains(student.studentName)) {
//                                         tempArray.remove(student.studentName);
//                                       } else {
//                                         tempArray.add(student.studentName!);
//                                       }
//                                     });
