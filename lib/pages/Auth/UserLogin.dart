import 'package:flutter/material.dart';
import 'package:original/pages/Auth/Verify.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/config.dart';
import '../../widgets/CustomTextField.dart';
import 'LoginScreen.dart';

class UserIn extends StatelessWidget {
  const UserIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/signup.png'),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //   const CustomTextfield(
              //   obscureText: false,
              //   hintText: 'Enter Number',
              //   icon: Icons.call,
              // ),
              // const CustomTextfield(
              //   obscureText: false,
              //   hintText: 'Enter Email',
              //   icon: Icons.alternate_email,
              // ),
              // const CustomTextfield(
              //   obscureText: false,
              //   hintText: 'Enter Full name',
              //   icon: Icons.person,
              // ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    // const CustomTextfield(
                    //   obscureText: false,
                    //   hintText: 'Enter Full name',
                    //   icon: Icons.person,
                    // ),
                    const CustomTextfield(
                      obscureText: false,
                      hintText: 'Enter Number',
                      icon: Icons.call,
                    ),
                    // TextFormField(
                    //   keyboardType: TextInputType.number,
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //   decoration: InputDecoration(
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black12),
                    //         borderRadius: BorderRadius.circular(10)),
                    //     focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.black12),
                    //         borderRadius: BorderRadius.circular(10)),
                    //     prefix: Padding(
                    //       padding: EdgeInsets.symmetric(horizontal: 8),
                    //       child: Text(
                    //         '(+91)',
                    //         style: TextStyle(
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //     ),
                    //     suffixIcon: Icon(
                    //       Icons.check_circle,
                    //       color: Colors.green,
                    //       size: 32,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (context) => Otp()),
                          // );
                          Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: const Otp(),
                              type: PageTransitionType.bottomToTop));
                    
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 45, 79, 6)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Send Code',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // const CustomTextfield(
              //   obscureText: true,
              //   hintText: 'Enter Password',
              //   icon: Icons.lock,
              // ),

              // const SizedBox(
              //   height: 10,
              // ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     height: 50,
              //     width: size.width,
              //     decoration: BoxDecoration(
              //       color: Constants.primaryColor,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     // padding:
              //     //     const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //     child: const Center(
              //       child: Text(
              //         'Sign Up',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 18.0,
              //         ),
              //       ),
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
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       SizedBox(
              //         height: 20,
              //         child: Image.asset('assets/images/google.png'),
              //       ),
              //       Text(
              //         'Sign Up with Google',
              //         style: TextStyle(
              //           color: Constants.blackColor,
              //           fontSize: 18.0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
            //   GestureDetector(
            //     onTap: () {
            //       Navigator.pushReplacement(
            //           context,
            //           PageTransition(
            //               child: const SignIn(),
            //               type: PageTransitionType.bottomToTop));
            //     },
            //     child: Center(
            //       child: Text.rich(
            //         TextSpan(children: [
            //           TextSpan(
            //             text: 'Have an Account? ',
            //             style: TextStyle(
            //               color: Constants.blackColor,
            //             ),
            //           ),
            //           TextSpan(
            //             text: 'Login',
            //             style: TextStyle(
            //               color: Constants.primaryColor,
            //             ),
            //           ),
            //         ]),
            //       ),
            //     ),
            //   ),
             ],
          ),
        ),
      ),
    );
  }
}
