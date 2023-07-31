import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'onboarded.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              SizedBox(
                // color: Colors.white,
                height: mHeight * 0.4,
                width: mWidth * 0.4,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset(
                    'images/Group 1735.png',
                  ),
                ),
              ),

              // Image.asset(
              //   'assets/images/applogo.png',
              //   scale: mHeight * 0.0005,
              // ),
              // SizedBox(
              //   height: mHeight * 0.02,
              // ),
              // SizedBox(
              // height: 90,            ),
              // Text("sports",style: TextStyle(fontSize:30,color: Colors.white ),)
            ],
          ),
        ),
        splashIconSize: mHeight * 0.6,
        backgroundColor: Colors.black,
        splashTransition: SplashTransition.slideTransition,
        nextScreen: OnBoardScreen());
  }
}
