import 'dart:async';

import 'package:alhamdllelah/appUI/App.ui.dart';
import 'package:alhamdllelah/pages/onboardingscreen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) => onboardingscreen()),(route) => false);

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppUI.colorBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.PNG',
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Food Now',
              style: GoogleFonts.poppins(
                letterSpacing: 5,
                color: AppUI.colorPrimary,
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 45,
                fontWeight:FontWeight.w800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
