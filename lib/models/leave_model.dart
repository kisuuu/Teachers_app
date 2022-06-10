class Leave {
  final String? date;
  final String? studentName;
  final String? studentClass;
  final String? studentDivision;
  final String? applicationTitle;
  final String? applicationDescription;

  Leave({
    this.studentDivision,
    this.date,
    this.studentName,
    this.studentClass,
    this.applicationTitle,
    this.applicationDescription,
  });
}

List<Leave> allStudentLeaveNotice = [
  Leave(
    date: "09 April 2022",
    studentName: "Prasad Khot",
    studentDivision: "B",
    studentClass: "V",
    applicationTitle: "Fever",
    applicationDescription:
        "Dear Ma'am,\nAs I am suffering with viral fever I will not be able to attend the classes for Tommorow.Please accept this request and kindly grant me leave.",
  ),
  Leave(
    date: "10 April 2022",
    studentName: "Kishan Poriya",
    studentDivision: "B",
    studentClass: "V",
    applicationTitle: "not feeling well",
    applicationDescription:
        "Dear Ma'am,\nAs I am suffering with viral fever I will not be able to attend the classes for Tommorow.Please accept this request and kindly grant me leave.",
  ),
  Leave(
    date: "19 April 2022",
    studentName: "Abhishek Devanshi",
    studentDivision: "B",
    studentClass: "V",
    applicationTitle: "Fever",
    applicationDescription:
        "Dear Ma'am,\nAs I am suffering with viral fever I will not be able to attend the classes for Tommorow.Please accept this request and kindly grant me leave.",
  ),
  Leave(
    date: "29 April 2022",
    studentName: "Prasad Khot",
    studentDivision: "B",
    studentClass: "V",
    applicationTitle: "Headache",
    applicationDescription:
        "Dear Ma'am,\nAs I am suffering with viral fever I will not be able to attend the classes for Tommorow.Please accept this request and kindly grant me leave.",
  ),
];
