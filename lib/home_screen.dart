import 'package:flutter/material.dart';
import 'package:monthly_budget_calc/learn_about_budget.dart';
import 'colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String income = '';

  double necessities = 0;
  double wants = 0;
  double saving = 0;

  String necessitiesStr = '0';
  String wantsStr = '0';
  String savingStr = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: AppColors.whiteSmoke,
        backgroundColor: AppColors.tealBlue,
        title: const Text(
          'The 50/30/20 Budget',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListView(
            children: [
              const SizedBox(height: 14),
              Text(
                'Find out how this budgeting approach applies to your money.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.charcoal.withOpacity(0.9),
                ),
              ),
              const SizedBox(height: 4),
              const Divider(),
              const SizedBox(height: 4),
              const Text(
                'Monthly after-tax income',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  _calculateBudget(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.charcoal.withOpacity(0.7),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.charcoal.withOpacity(0.7),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.charcoal.withOpacity(0.7),
                    ),
                  ),
                  hintText: '\$0',
                ),
                cursorColor: AppColors.tealBlue,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your 50/30/20 numbers:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 20),
              _buildBudgetItem('NEEDS', necessitiesStr),
              const SizedBox(height: 20),
              _buildBudgetItem('WANTS', wantsStr),
              const SizedBox(height: 20),
              _buildBudgetItem('SAVINGS AND DEBT REPAYMENT', savingStr),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const LearnAboutTheBudget()));
                },
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: AppColors.charcoal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Learn about the',
                      ),
                      TextSpan(
                        text: ' 50/30/20 Budget Rule',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColors.charcoal,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBudgetItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.charcoal,
          ),
        ),
        Text(
          '\$$value',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: AppColors.tealBlue,
          ),
        ),
      ],
    );
  }

  void _calculateBudget(String income) {
    if (income.isEmpty) {
      setState(() {
        necessitiesStr = '0';
        wantsStr = '0';
        savingStr = '0';
      });
      return;
    }

    double incomeDouble = double.parse(income);
    setState(() {
      necessities = (50 / 100) * incomeDouble;
      wants = (30 / 100) * incomeDouble;
      saving = (20 / 100) * incomeDouble;

      necessitiesStr = necessities.toStringAsFixed(1);
      wantsStr = wants.toStringAsFixed(1);
      savingStr = saving.toStringAsFixed(1);
    });
  }
}
