import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/dashboard%20screens/gallery_screen.dart';
import 'package:school_teacher_app/dashboard%20screens/home_screen.dart';
import 'package:school_teacher_app/dashboard%20screens/profile_screen.dart';
import 'package:school_teacher_app/screens/student_leave.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    StudentLeaveList(),
    const GalleryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return
        // WillPopScope(
        //   onWillPop: () => _onWillPop(context),
        //   child:
        Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: whiteColor.withOpacity(
            0.5,
          ),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
        ),
        child: NavigationBar(
          backgroundColor: mainColor,
          animationDuration: const Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          height: 60,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: whiteColor,
              ),
              label: 'Home',
              selectedIcon: Icon(
                Icons.home,
                color: whiteColor,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.note_alt_rounded,
                color: whiteColor,
              ),
              label: 'leave',
              selectedIcon: Icon(
                Icons.note_alt_rounded,
                color: whiteColor,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.image,
                color: whiteColor,
              ),
              label: 'Gallery',
              selectedIcon: Icon(
                Icons.image,
                color: whiteColor,
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person,
                color: whiteColor,
              ),
              label: 'Profile',
              selectedIcon: Icon(
                Icons.person,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
