import 'package:dsi_pro/dsi_pro.dart';
import 'package:flutter/material.dart';
import 'package:original/pages/Auth/AgentLoginScreen.dart';
import 'package:original/pages/Auth/UserLogin.dart';
import 'package:original/pages/User/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';

import '../../utils/config.dart';
import '../../widgets/CustomTextField.dart';
import 'ForgotPassword.dart';
import 'Signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/signin.png'),

              Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: const AgentSignIn(),
                              type: PageTransitionType.bottomToTop));
                    },
                    child: Text(
                      "For Agents",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),

              const Text(
                "User's Sign In ",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserIn()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 45, 79, 6)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              // const CustomTextfield(
              //   obscureText: false,
              //   hintText: 'Enter Number',
              //   icon: Icons.call,
              // ),
              // const CustomTextfield(
              //   obscureText: true,
              //   hintText: 'Enter Password',
              //   icon: Icons.lock,
              // ),
              // _pininputForm(),
              // const SizedBox(
              //   height: 10,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //         context,
              //         PageTransition(
              //             child: const HomePage(),
              //             type: PageTransitionType.bottomToTop));
              //   },
              //   child: Container(
              //     width: size.width,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       color: Constants.primaryColor,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     // padding:
              //     //     const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //     child: Center(
              //       child: Text(
              //         'Sign In'.toUpperCase(),
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 18.0,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //         context,
              //         PageTransition(
              //             child: const ForgotPassword(),
              //             type: PageTransitionType.bottomToTop));
              //   },
              //   child: Center(
              //     child: Text.rich(
              //       TextSpan(children: [
              //         TextSpan(
              //           text: 'Forgot Password? ',
              //           style: TextStyle(
              //             color: Constants.blackColor,
              //           ),
              //         ),
              //         TextSpan(
              //           text: 'Reset Here',
              //           style: TextStyle(
              //             color: Constants.primaryColor,
              //           ),
              //         ),
              //       ]),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   children: const [
              //     Expanded(child: Divider()),
              //     Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 10),
              //       child: Text('OR'),
              //     ),
              //     Expanded(child: Divider()),
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   width: size.width,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Constants.primaryColor),
              //       borderRadius: BorderRadius.circular(10)),
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SizedBox(
              //         height: 20,
              //         child: Image.asset('assets/images/google.png'),
              //       ),
              //       DBR(),
              //       Text(
              //         'Sign In with Google',
              //         style: TextStyle(
              //           color: Constants.blackColor,
              //           fontSize: 18.0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //         context,
              //         PageTransition(
              //             child: const SignUp(),
              //             type: PageTransitionType.bottomToTop));
              //   },
              //   child: Center(
              //     child: Text.rich(
              //       TextSpan(children: [
              //         TextSpan(
              //           text: 'New to Planty? ',
              //           style: TextStyle(
              //             color: Constants.blackColor,
              //           ),
              //         ),
              //         // TextSpan(
              //         //   text: 'Register',
              //         //   style: TextStyle(
              //         //     color: Constants.primaryColor,
              //         //   ),
              //         // ),
              //       ]),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _pininputForm() {
  //   return Form(
  //       child: Column(
  //     children: [Pinput()],
  //   ));
  // }
}
