import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/models/students_list_model.dart';

class SendNoticeScreen extends StatefulWidget {
  const SendNoticeScreen({Key? key}) : super(key: key);

  @override
  State<SendNoticeScreen> createState() => _SendNoticeScreenState();
}

class _SendNoticeScreenState extends State<SendNoticeScreen> {
  bool isSelectionMode = false;
  List<Map> staticData = MyData.data;
  Map<int, bool> selectedFlag = {};

  List<Student> sendNoticeLists = allStudent;
  final allSendNoticeLists =
      Student(isSelected: false, isNso: false, title: 'Select All');
  final String _selectedCountry = "";
  var country = {
    '': '',
    'I st': 'IN',
    'II nd': 'PAK',
    'III rd': 'NP',
    'IV th': 'BD',
    'V th': 'BD',
  };

  final List _countries = [];
  CountryDependentDropDown() {
    country.forEach((key, value) {
      _countries.add(key);
    });
  }

  String _selectedState = "";
  var state = {
    'Jharkhand': 'IN',
    'Panjab': 'IN',
    'Baluchistan': 'PAK',
    'Dhaka': 'BD',
    'Janakpur': 'NP'
  };

  final List _states = [];
  StateDependentDropDown(countryShortName) {
    state.forEach((key, value) {
      if (countryShortName == value) {
        _states.add(key);
      }
    });
    _selectedState = _states[0];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CountryDependentDropDown();
  }

  bool value = false;
  final _formKeyNotice = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Send Notice",
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
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        iconTheme: const IconThemeData(
          color: whiteColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 23,
                ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     "Select CLass",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 13,
                //       color: subtitleColor,
                //     ),
                //   ),
                // ),
                // Container(
                //   // color: Colors.amber,
                //   // width: 100,
                //   height: 40,
                //   child: DropdownButton(
                //     menuMaxHeight: MediaQuery.of(context).size.height * 0.4,
                //     // itemHeight: 100,
                //     isExpanded: true,
                //     value: _selectedCountry,
                //     onChanged: (newValue) {
                //       setState(() {
                //         _states = [];
                //         StateDependentDropDown(country[newValue]);
                //         _selectedCountry = "$newValue";
                //       });
                //     },
                //     items: _countries.map((country) {
                //       return DropdownMenuItem(
                //         child: Text(country),
                //         value: country,
                //       );
                //     }).toList(),
                //   ),
                // ),
                // SizedBox(
                //   height: 13,
                // ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     "Select Division",
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 13,
                //         color: subtitleColor),
                //   ),
                // ),
                // Container(
                //   // width: 400,
                //   height: 40,
                //   child: DropdownButton(
                //     isExpanded: true,

                //     menuMaxHeight: MediaQuery.of(context).size.height * 0.4,
                //     // underline: Container(
                //     //   height: 2,
                //     //   color: Colors.deepPurpleAccent,
                //     // ),
                //     value: _selectedState,
                //     onChanged: (newValue) {
                //       setState(() {
                //         _selectedState = "$newValue";
                //       });
                //     },
                //     items: _states.map((state) {
                //       return DropdownMenuItem(
                //         child: Text(state),
                //         value: state,
                //       );
                //     }).toList(),
                //   ),
                // ),
                const SizedBox(
                  height: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Notice Title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: subtitleColor,
                      ),
                    ),
                    Form(
                      key: _formKeyNotice,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              isDense: true, // Added this
                              // contentPadding: EdgeInsets.all(8), // Added this
                            ),
                            style: const TextStyle(
                              fontSize: 16.0,
                              // height: 1.0,
                              // color: Colors.black,
                            ),
                            keyboardType: TextInputType.text,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Write notice title';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Notice Discription",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: subtitleColor,
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              isDense: true, // Added this
                              // contentPadding: EdgeInsets.all(8), // Added this
                            ),
                            keyboardType: TextInputType.multiline,
                            style: const TextStyle(
                              fontSize: 16.0,
                              // height: 1.0,
                              // color: Colors.black,
                            ),
                            minLines: 1,
                            maxLines: 4,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Write Reject Reason';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                        child: _buildSelectAllButton(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: mainColor,
                        child: Column(
                          children: [
                            SizedBox(
                              // height: 300,
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: ListView.builder(
                                itemBuilder: (builder, index) {
                                  Map data = staticData[index];
                                  selectedFlag[index] =
                                      selectedFlag[index] ?? false;
                                  bool? isSelected = selectedFlag[index];

                                  return ListTile(
                                    // onLongPress: () => onLongPress(isSelected!, index),
                                    onTap: () {
                                      onTap(
                                        isSelected!,
                                        index,
                                      );
                                    },
                                    title: Text("${data['name']}"),
                                    subtitle: Text("${data['email']}"),
                                    trailing:
                                        _buildSelectIcon(isSelected!, data),
                                  );
                                },
                                itemCount: staticData.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Attach File",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: subtitleColor,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['pdf'],
                        );
                        if (result == null) return;

                        final file = result.files.first;
                        // openFile(file);

                        // final newFile = await saveFilePermanently(file);

                        print('From ${file.path}');
                      },
                      child: const Text(
                        'Pick File',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: mainColor
                        // color: Color.fromARGB(255, 19, 195, 156),
                        ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AdvanceCustomAlert();
                          });
                    },
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<File> saveFilePermanently(PlatformFile file) async {
  //   final appStorage = await getApplicationDocumentsDirectory();
  //   // final newFile = File('${appStorage.path}/${file.name}');
  //   final newFile = File('${appStorage.path}/${file.name}');

  //   return File(file.path!).copy(newFile.path);
  // }

  void openFile(PlatformFile file) {
    // OpenFile.open(file.path!);
    OpenFile.open(file.path!);
  }

  void onTap(bool isSelected, int index) {
    setState(() {
      selectedFlag[index] = !isSelected;
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  Widget? _buildSelectIcon(bool isSelected, Map data) {
    if (isSelectionMode) {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
      );
    } else {
      return null;
      // CircleAvatar(
      //   child: Text('${data['id']}'),
      // );
    }
  }

  Widget? _buildSelectAllButton() {
    bool isFalseAvailable = selectedFlag.containsValue(false);
    if (isSelectionMode) {
      String select = "Select All";
      String deselect = "Deselect all";
      return InkWell(
        onTap: _selectAll,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  isFalseAvailable ? select : deselect,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: IconButton(
                  // style: ElevatedButton.styleFrom(
                  //   primary: whiteColor,
                  //   elevation: 0,
                  // ),
                  onPressed: _selectAll,
                  icon: Icon(
                    isFalseAvailable
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                    color: greyColor,
                  ),
                ),
              )
            ],
          ),
          // title: Text('Select All'),
          // trailing: TextButton(
          //   // backgroundColor: whiteColor,
          //   onPressed: _selectAll,
          //   child: Icon(
          //     isFalseAvailable ? Icons.check_box : Icons.check_box,
          //   ),
          // ),

          // title: InkWell(
          //   onTap: _selectAll,
          // child: Text(
          //   isFalseAvailable ? select : deselect,
          // ),
          // ),
        ),
      );
    } else {
      return null;
    }
  }

  void _selectAll() {
    bool isFalseAvailable = selectedFlag.containsValue(false);
    // If false will be available then it will select all the checkbox
    // If there will be no false then it will de-select all
    selectedFlag.updateAll((key, value) => isFalseAvailable);
    setState(() {
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }
}

class AdvanceCustomAlert extends StatelessWidget {
  const AdvanceCustomAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 220,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Column(
                  children: [
                    const Text(
                      'Sucess',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'You have succesfully posted a Notice to all students',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: subtitleColor,
                      ),
                    ),
                    // SizedBox(
                    const Spacer(),
                    //   height: 20,
                    // ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 19, 195, 156),
                          // color: Color.fromARGB(255, 19, 195, 156),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Positioned(
              top: -60,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 19, 195, 156),
                radius: 60,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ],
        ));
  }
}
