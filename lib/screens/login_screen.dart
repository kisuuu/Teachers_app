import 'package:flutter/material.dart';
import 'package:school_teacher_app/constants/constant.dart';
import 'package:school_teacher_app/screens/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0), // here the desired height
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 33,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/schoolup_logo.png',
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                ],
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: Form(
                      key: formKey,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: ListView(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Welcome Teacher",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Login your account ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: subtitleColor,
                                        height: 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Username',
                                ),
                                validator: (value) {
                                  if (value != null && value.length < 1) {
                                    return 'Enter valid username.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              // TextFormField(
                              //   keyboardType: TextInputType.emailAddress,
                              //   decoration: const InputDecoration(
                              //     labelText: 'Email',
                              //   ),
                              //   validator: (value) {
                              //     if (value != null && value.length < 10) {
                              //       return 'Enter valid Email Address.';
                              //     } else
                              //       return null;
                              //   },
                              // ),
                              // const SizedBox(
                              //   height: 8,
                              // ),
                              TextFormField(
                                obscureText: hidePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // hidePassword = !hidePassword;
                                      setState(() {
                                        hidePassword = !hidePassword;
                                      });
                                    },
                                    color: Colors.black,
                                    icon: Icon(hidePassword
                                        ? Icons.visibility_off_rounded
                                        : Icons.visibility),
                                  ),
                                ),
                                validator: (value) {
                                  if (value != null && value.length < 1) {
                                    return 'Enter Correct Password.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              InkWell(
                                onTap: () {
                                  final isValidForm =
                                      formKey.currentState!.validate();
                                  if (isValidForm) {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Dashboard()),
                                        (route) => false);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [mainColor1, mainColor2],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      Text(
                                        'LOGIN',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.arrow_forward_outlined,
                                        size: 30.0,
                                        color: Colors.white,
                                      ),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
        ),
      ),
    );
  }
}
