import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: transparentColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/splashbg.jpg',
              ),
              opacity: 0.3,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Column(
                            //   children: [
                            //     // Container(
                            //     //     margin: EdgeInsets.all(20.0),
                            //     //     child: Image.asset(
                            //     //       'assets/images/Schoolup_logo.jpg',
                            //     //       width: 150,
                            //     //       height: 150,
                            //     //     )
                            //     //     // RichText(
                            //     //     //   text: TextSpan(
                            //     //     //     children: [
                            //     //     //       TextSpan(
                            //     //     //         text: "DiGital\n",
                            //     //     //         style: TextStyle(
                            //     //     //           fontSize: 45,
                            //     //     //           fontWeight: FontWeight.bold,
                            //     //     //           fontStyle: FontStyle.italic,
                            //     //     //           color: Colors.white,
                            //     //     //           // fontFamily: 'Poppins',
                            //     //     //         ),
                            //     //     //       ),
                            //     //     //       TextSpan(
                            //     //     //         text: "Parent App",
                            //     //     //         style: TextStyle(
                            //     //     //           fontSize: 25,
                            //     //     //           fontWeight: FontWeight.bold,
                            //     //     //           color: Colors.white,
                            //     //     //           // fontFamily: 'Poppins',
                            //     //     //         ),
                            //     //     //       ),
                            //     //     //     ],
                            //     //     //   ),
                            //     //     // ),
                            //     //     ),
                            //   ],
                            // ),
                            // Text(
                            //   "DiGital",
                            //   style: TextStyle(
                            //       fontSize: 45,
                            //       fontWeight: FontWeight.bold,
                            //       fontStyle: FontStyle.italic,
                            //       color: Colors.white,
                            //       fontFamily: 'Poppins'),
                            // ),
                            // Text(
                            //   "Parent App",
                            //   style: TextStyle(
                            //       fontSize: 25,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.white,
                            //       fontFamily: 'Poppins'),
                            // ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.44,
                              child: AnimatedSplashScreen(
                                splash: Image.asset(
                                    'assets/images/schoolup_logo.png'),
                                nextScreen: OnBoardingScreen(),
                                splashTransition:
                                    SplashTransition.slideTransition,
                                splashIconSize: 270,
                                backgroundColor: Colors.transparent,
                                duration: 3000,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Designed by Mobisoftseo Technologies",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          // Text(
                          //   "Mobisoftseo Technologies",
                          //   style: TextStyle(
                          //       color: blackColor,
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 12),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
