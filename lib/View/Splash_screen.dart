import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // Simulate a delay of 2 seconds and then navigate to the LoginPage
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }
  @override
 Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutterlogo.png', // Replace with the actual image path
              width: 1000, // Adjust the width as needed
              height: 500, // Adjust the height as needed
            ),
            SizedBox(height: 20), // Adjust spacing as needed
          ],
        )
      ),
    );
  }
}