import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  Expansion({Key? key}) : super(key: key);

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  static const loremImpsm = 'Hello User';
  final List<Item> items = [
    Item(
      header: 'panel 1',
    ),
    Item(
      header: 'panel 2',
    ),
    Item(
      header: 'panel 3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // controller: controller,
        child: ExpansionPanelList.radio(
          children: items
              .map((item) => ExpansionPanelRadio(
                  canTapOnHeader: true,
                  value: item.header,
                  headerBuilder: (context, isExpanded) => ListTile(
                        title: Text(
                          item.header,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                  body: Center(
                    child: Text("Hiii"),
                  )))
              .toList(),
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
