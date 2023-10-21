import 'package:flutter/material.dart';
import 'package:submission/login.dart';
import 'package:submission/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), _navigateToLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: xPrimary),
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Image.asset("images/splash_screen_logo.png",
                    width: 300, height: 300),
                const SizedBox(
                  height: 20,
                ),
                const CircularProgressIndicator(
                  color: xPrimary,
                ),
              ],
            )),
      )),
    );
  }
}
