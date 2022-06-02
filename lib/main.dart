import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:the_tereliye_book_new/model/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        margin: const EdgeInsets.symmetric(horizontal: 70),
        alignment: Alignment.center,
        child: const Image(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
      nextScreen: const NavigationBarScreen(),
      backgroundColor: const Color.fromARGB(255, 239, 243, 244),
      splashIconSize: 250,
      duration: 2000,
    );
  }
}
