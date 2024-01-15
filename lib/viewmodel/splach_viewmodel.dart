import 'package:flutter/material.dart';
import 'package:healt_app/view/login_page.dart';
import 'package:healt_app/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashViewModel with ChangeNotifier {
  void getSplash(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (BuildContext context) => LoginViewModel(),
            child: LoginPage(),
          ),
        ),
      );
    });
  }
}
