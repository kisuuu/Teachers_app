import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class MyClassTimeTable extends StatefulWidget {
  const MyClassTimeTable({Key? key}) : super(key: key);

  @override
  State<MyClassTimeTable> createState() => _MyClassTimeTableState();
}

class _MyClassTimeTableState extends State<MyClassTimeTable> {
  final List<Item> items = [
    Item(
      header: 'Monday',
    ),
    Item(
      header: 'Tuesday',
    ),
    Item(
      header: 'Wednesday',
    ),
    Item(
      header: 'Thursday',
    ),
    Item(
      header: 'Friday',
    ),
    Item(
      header: 'Saturday',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ExpansionPanelList.radio(
                children: items
                    .map((item) => ExpansionPanelRadio(
                        canTapOnHeader: true,
                        value: item.header,
                        headerBuilder: (context, isExpanded) => ListTile(
                              title: Text(
                                item.header,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                        body: Center(
                          child: Image.asset('assets/images/Capture.PNG'),
                        )))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String header;
  Item({
    required this.header,
  });
}
