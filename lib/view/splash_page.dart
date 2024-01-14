import 'package:flutter/material.dart';
import 'package:healt_app/viewmodel/splach_viewmodel.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashViewModel viewModel =
        Provider.of<SplashViewModel>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      viewModel.getSplash(context);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.5,
          child: Lottie.asset('assets/Animation - 1704713411549.json'),
        ),
      ),
    );
  }
}
