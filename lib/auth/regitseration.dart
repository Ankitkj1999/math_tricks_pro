import 'package:flutter/material.dart';
import 'package:flutter_maths_tricks/auth/auth_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../contants/constnts.dart';
import '../theme/color_scheme.dart';
import '../ui/common/common.dart';
import '../utils/util.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Initialize controller
  AuthController authController = Get.find();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passwordVisible = false;
  @override
  void initState() {

    super.initState();
    init();
  }

  Future<void> init() async {
   // wait for 5 seconds
    await Future.delayed(Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    setScreenSize(
      context,
    );
    return Semantics(
      label: "Registration Screen",
      child: Scaffold(
        appBar: getNoneAppBar(context, color: Colors.white),
        backgroundColor: getBackgroundColor(context),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('${assetPath}mask_group.png',
                      height: 400.h, width: double.infinity, fit: BoxFit.fill),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        120.verticalSpace,
                        Image.asset("assets/logo/inApp.png", height: 130.h,),
                        // SvgPicture.asset(
                        //   '${logoPath}frame.svg',
                        //   height: 130.h,
                        // ),
                        15.verticalSpace,
                        getCustomFont('Math Tricks', 30, Colors.black, 2,
                            fontWeight: FontWeight.w600, font: 'RedRose'),
                        50.verticalSpace,
                        Container(
                          // width: 329,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF8B8B8B)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: TextFormField(
                            // decoration:
                            //     const InputDecoration(hintText: "Enter Email"),
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Color(0xFF8B8B8B),
                              ),
                          ),
                        ),
                        ),
                        10.verticalSpace,
                        Container(
                          // width: 329,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF8B8B8B)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: TextFormField(
                            // decoration:
                            //     const InputDecoration(hintText: "Enter Email"),
                            controller: _passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !passwordVisible,

                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Color(0xFF8B8B8B),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  setState(() {
                                     passwordVisible = !passwordVisible;
                                  });
                                },
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  // passwordVisible
                                  //     ? Icons.visibility
                                  //     : Icons.visibility_off,
                                  passwordVisible ? Icons.visibility_off : Icons.visibility,
                                  color: Color(0xFF8B8B8B),
                                ),


                              ),

                          ),
                        ),
                        ),

                        30.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                authController.register(
                                    _emailController.text.trim(),
                                    _passwordController.text.trim());
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                authController.login(
                                    _emailController.text.trim(),
                                    _passwordController.text.trim());
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),

                        25.verticalSpace,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {
                            authController.signInWithGoogle();
                          },
                          child: const Text("Sign In with Google", style: TextStyle(color: Colors.white),),
                        ),
                        // getCustomFont('By Ankit Kumar', 20, Colors.black, 2,
                        //     fontWeight: FontWeight.w400, font: 'RedRose')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class _RegisterState extends State<Register> {
//   final TextEditingController _emailController = TextEditingController();
//
//   final TextEditingController _passwordController = TextEditingController();

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text("Register"),
//     ),
//     body: Column(
//       children: [
//         TextField(
//           decoration: const InputDecoration(hintText: "Email"),
//           controller: _emailController,
//         ),
//         TextField(
//           decoration: const InputDecoration(hintText: "Password"),
//           controller: _passwordController,
//           obscureText: true,
//         ),
//         const SizedBox(height: 30),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 authController.register(_emailController.text.trim(),
//                     _passwordController.text.trim());
//               },
//               child: const Text("Sign Up", style: TextStyle(color: Colors.black),),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 authController.login(_emailController.text.trim(),
//                     _passwordController.text.trim());
//               },
//               child: const Text("Login", style: TextStyle(color: Colors.black),),
//             ),
//           ],
//         ),
//         const SizedBox(height: 30),
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             primary: Colors.red,
//           ),
//           onPressed: () {
//             authController.signInWithGoogle();
//           },
//           child: const Text("Sign In with Google", style: TextStyle(color: Colors.black),),
//         ),
//       ],
//     ),
//   );
// }
// }
