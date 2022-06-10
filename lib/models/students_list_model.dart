import 'dart:ui';

class Student {
  final String? studentName;
  final String? title;
  final String? fatheName;
  final String? motherName;
  final String? studentClass;
  final String? academicYear;
  final String? gender;
  final String? doa;
  final String? dob;
  final String? parentEmailId;
  final String? imageUrl;
  final String? rollNo;
  final String? adharNo;
  final String? pdfName;
  final int? grNo;
  final int? mobNumber;
  bool isSelected;
  bool isNso;
  bool value;

  Student({
    this.mobNumber,
    this.pdfName,
    this.academicYear,
    this.title,
    this.adharNo,
    this.doa,
    this.dob,
    this.fatheName,
    this.gender,
    this.grNo,
    this.imageUrl,
    this.motherName,
    this.parentEmailId,
    this.rollNo,
    this.studentClass,
    this.studentName,
    required this.isSelected,
    required this.isNso,
    this.value = false,
  });
}

List<Student> allStudent = [
  Student(
    value: false,
    academicYear: "2020-2021",
    adharNo: "1234 4325 4567 1234",
    doa: "01 Apr 2018",
    dob: "22 July 1996",
    fatheName: "Manish Kharat",
    gender: "Male",
    grNo: 1234578888,
    imageUrl: "assets/images/profile_image.png",
    motherName: "Monica Kharat",
    parentEmailId: "parentboth84@gmail.com",
    rollNo: "03",
    studentClass: "XI-B",
    studentName: "Prasad sai Kharat",
    isSelected: false,
    mobNumber: 1234567898,
    isNso: false,
    pdfName: "pdf_no1.pdf",
  ),
  Student(
    academicYear: "2020-2021",
    adharNo: "1234 4325 4567 1234",
    doa: "01 Apr 2018",
    dob: "22 July 1996",
    fatheName: "Manish Kharat",
    gender: "Male",
    grNo: 1234578888,
    imageUrl: "assets/images/profile_image.png",
    motherName: "Monica Kharat",
    parentEmailId: "parentboth84@gmail.com",
    rollNo: "04",
    studentClass: "XI-B",
    studentName: "Prasad Kharat",
    isSelected: false,
    mobNumber: 9854786521,
    isNso: false,
    value: false,
    pdfName: "pdf_no2.pdf",
  ),
  Student(
    academicYear: "2020-2021",
    adharNo: "1234 4325 4567 1234",
    doa: "01 Apr 2018",
    dob: "22 July 1996",
    fatheName: "Manish Kharat",
    gender: "Male",
    grNo: 1234578888,
    imageUrl: "assets/images/profile_image.png",
    motherName: "Monica Kharat",
    parentEmailId: "parentboth84@gmail.com",
    rollNo: "04",
    studentClass: "XI-B",
    studentName: "sai Kharat",
    isSelected: false,
    mobNumber: 9854123674,
    isNso: false,
    value: false,
    pdfName: "pdf_no3.pdf",
  ),
  Student(
    academicYear: "2020-2021",
    adharNo: "1234 4325 4567 1234",
    doa: "01 Apr 2018",
    dob: "22 July 1996",
    fatheName: "Manish Kharat",
    gender: "Male",
    grNo: 1234578888,
    imageUrl: "assets/images/profile_image.png",
    motherName: "Monica Kharat",
    parentEmailId: "parentboth84@gmail.com",
    rollNo: "04",
    studentClass: "XI-B",
    studentName: "sai Kharat",
    isSelected: false,
    mobNumber: 5478951235,
    isNso: false,
    value: false,
    pdfName: "pdf_no4.pdf",
  ),
];

// https://raw.githubusercontent.com/nstack-in/flutter-select-list-item/master/lib/data.dart
class MyData {
  static List<Map> data = [
    {
      "id": 1,
      "name": "Marchelle",
      "email": "mailward0@hibu.com",
      "address": "57 Bowman Drive"
    },
    {
      "id": 2,
      "name": "Modesty",
      "email": "mviveash1@sohu.com",
      "address": "2171 Welch Avenue"
    },
    {
      "id": 3,
      "name": "Maure",
      "email": "mdonaghy2@dell.com",
      "address": "4623 Chinook Circle"
    },
    {
      "id": 4,
      "name": "Myrtie",
      "email": "mkilfoyle3@yahoo.co.jp",
      "address": "406 Kings Road"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
    {
      "id": 5,
      "name": "Winfred",
      "email": "wvenn4@baidu.com",
      "address": "2444 Pawling Lane"
    },
  ];
}

class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;

  ItemModel({
    this.expanded = false,
    required this.headerItem,
    required this.discription,
    required this.colorsItem,
  });
}
