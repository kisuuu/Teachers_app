import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Map<String, String>> splashData = [
    {
      "title": "View your\nStudents Details",
      "image": "assets/images/intro1.png",
    },
    {
      "title": "Share Notice online to\nall Parents",
      "image": "assets/images/intro2.png",
    },
    {
      "title": " Student Exam &\nReport Card",
      "image": "assets/images/intro3.png",
    }
  ];
  final _controller = PageController();

  int _currentPage = 0;
  int currentIndex = 0;
  late PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: splashData.length,
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          splashData[index]['title']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      AspectRatio(
                        aspectRatio: 12 / 9,
                        child: Image.asset(
                          splashData[index]['image']!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  );
                },
                onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (int index) => _buildDots(index: index),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        onPressed: () {
                          if (currentIndex == splashData.length - 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          }
                          _controller.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          currentIndex + 1 == splashData.length
                              ? "Let's Start"
                              : 'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                            height: 1.5,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: mainColor,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildDots({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [mainColor1, mainColor2],
        ),
      ),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: currentIndex == index ? 20 : 10,
    );
  }
}
