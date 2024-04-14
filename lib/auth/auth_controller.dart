import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_maths_tricks/auth/regitseration.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../contants/constnts.dart';
import '../ui/home/home_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;

  late Rx<GoogleSignInAccount?> googleSignInAccount;
  String userEmailAddress = '';

  @override
  void onReady() {
    super.onReady();

    _firebaseUser();
  }
// firebase user
  void _firebaseUser()async{
  await Future.delayed(Duration(seconds: 3));
    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);


    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);


    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
  }



  _setInitialScreen(User? user) {
    if (user == null) {

      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const Register());

    } else {

      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(() => HomePage());

    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    print(googleSignInAccount);
    if (googleSignInAccount == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const Register());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(() => HomePage());
    }
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => print(onErr));
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      print(e.toString());
    }
  }
  // Method to fetch user information
  void fetchUserInfo() async {
    User? user = auth.currentUser;
    if (user != null) {
      String displayName = user.displayName ?? '';
      String email = user.email ?? '';
      String photoURL = user.photoURL ?? '';
      String userEmail = user.email ?? '';
      userEmailAddress = userEmail;

      // Now you can use displayName, email, and photoURL in your app
      print('Display Name: $displayName');
      print('Email: $email');
      print('Photo URL: $photoURL');
      print('User Email: $userEmail');
    }
  }
  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (firebaseAuthException) {}
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {}
  }

  void signOut() async {
    await auth.signOut();
  }
}