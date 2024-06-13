import 'package:flutter/material.dart';
import 'package:monthly_budget_calc/splash_screen.dart';

class MonthlyBudgetCalc extends StatelessWidget {
  const MonthlyBudgetCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Monthly Budget Calculator',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}