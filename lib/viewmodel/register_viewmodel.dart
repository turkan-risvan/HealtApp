import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/view/login_page.dart';
import 'package:healt_app/view/main_page.dart';
import 'package:healt_app/viewmodel/login_viewmodel.dart';
import 'package:healt_app/viewmodel/main_viewmodel.dart';
import 'package:provider/provider.dart';
 
class RegisterViewModel with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;

  void register(BuildContext context, String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _openMainPage(context);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  void openLoginPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => LoginViewModel(),
        child: LoginPage(),
      ),
    );
    Navigator.pushReplacement(context, pageRoute);
  }

  void _openMainPage(BuildContext context) {
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => MainViewModel(),
        child: MainPage(),
      ),
    );
    Navigator.pushReplacement(context, pageRoute);
  }
}
