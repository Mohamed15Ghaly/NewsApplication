import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/utile/images.dart';
import 'package:news_app/views/home_app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 4)),
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? Center(
                      child: Lottie.asset(
                          width: MediaQuery.sizeOf(context).width / 2,
                          ImageApp.imageSplashScreen),
                    )
                  : const HomeApp()),
    );
  }
}
