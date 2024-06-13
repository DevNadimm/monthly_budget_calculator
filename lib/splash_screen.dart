import 'dart:async';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img.jpg'),
              const Text(
                'Monthly Budget Calculator',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 27,
                    color: AppColors.charcoal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Welcome to Monthly Budget Calculator! Manage your expenses, set savings goals, and gain financial clarity—all in one place. Simplify your budgeting and take control of your financial future today.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.charcoal.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
