import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/firebase_options.dart';

import 'package:healt_app/view/login_page.dart';
import 'package:healt_app/view/splash_page.dart';

import 'package:healt_app/viewmodel/login_viewmodel.dart';
import 'package:healt_app/viewmodel/splach_viewmodel.dart';

import 'package:provider/provider.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext context) => SplashViewModel(),
        child: SplashPage(),
      ),
    );
  }
}
