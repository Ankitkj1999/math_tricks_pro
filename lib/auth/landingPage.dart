import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maths_tricks/auth/regitseration.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'auth_controller.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    init();
  }
  void init() async{
    Get.put(AuthController());
    // await Get.put(AuthController());
    // Get.to(Register())?.then((value) => Get.put(AuthController()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( body:  Container(),);
  }
}
