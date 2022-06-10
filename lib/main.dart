import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_teacher_app/dashboard%20screens/home_screen.dart';
import 'package:school_teacher_app/screens/dashboard.dart';
import 'package:school_teacher_app/screens/login_screen.dart';
import 'package:school_teacher_app/screens/splash_screen.dart';
import 'package:school_teacher_app/testing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
