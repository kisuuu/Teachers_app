// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_teacher_app/constants/constant.dart';

class ViewAttendence extends StatefulWidget {
  const ViewAttendence({Key? key}) : super(key: key);

  @override
  State<ViewAttendence> createState() => _ViewAttendenceState();
}

class _ViewAttendenceState extends State<ViewAttendence> {
  DateTime date = DateTime.now();
  // DateTime date = DateTime(2022, 12, 24);
  final rmyTime = DateFormat('dd MMM, yyyy').format(DateTime.now());
  String _selectedCountry = "";
  var country = {
    '': '',
    'I st': 'first',
    'II nd': 'sec',
    'III rd': 'third',
    'IV th': 'fourth',
  };

  List _countries = [];
  CountryDependentDropDown() {
    country.forEach((key, value) {
      _countries.add(key);
    });
  }

  String _selectedState = "";
  var state = {
    'Div A': 'first',
    'Div B': 'first',
    'Div A': 'sec',
    'Div A': 'fourth',
    'Div C': 'third'
  };

  List _states = [];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Attendence",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            children: [
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
              // SizedBox(
              //   height: 13,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Date",
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 13,
              //         color: subtitleColor),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${date.day}-${date.month}-${date.year}",
                        // "${rmyTime}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: titleColor,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () async {
                          DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3100),
                          );
                          // if  'CALCEL' => null
                          if (newDate == null) return;
                          // if  'OK' => DateTime
                          setState(() {
                            date = newDate;
                          });
                        },
                        child: Icon(
                          Icons.calendar_month,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
