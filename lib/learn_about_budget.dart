import 'package:flutter/material.dart';
import 'package:monthly_budget_calc/colors.dart';

class LearnAboutTheBudget extends StatelessWidget {
  const LearnAboutTheBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.tealBlue,
        foregroundColor: AppColors.whiteSmoke,
        title: const Text(
          '50/30/20 Budget Rule',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              const SizedBox(
                height: 13,
              ),
              const Text(
                'What is the 50/30/20 Budget Rule?',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.charcoal),
              ),
              const SizedBox(height: 16),
              const Text(
                'The 50/30/20 rule is a simple way to budget that dozen’t involve detailed budgeting categories. The rule divides your after-tax income into three categories: 50% for needs, 30% for wants, and 20% for savings or paying off debt.',
                style: TextStyle(fontSize: 16, color: AppColors.charcoal),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/budget_img.jpg'),
              // const BudgetChart(),
              const SizedBox(height: 16),
              _buildCategorySection(
                title: '50% Needs',
                description:
                    'Needs are those bills that you absolutely must pay and are the things necessary for survival. These include rent or mortgage payments, groceries, car payments, insurance, health care, minimum debt payment, and utilities.',
              ),
              _buildCategorySection(
                title: '30% Wants',
                description:
                    'Wants are all the things you spend money on that are not absolutely essential. This includes dinners out, gifts, travel, entertainment, and hobbies.',
              ),
              _buildCategorySection(
                title: '20% Savings & Debt Repayment',
                description:
                    'Finally, try to save and invest at least 20% of your after-tax income. This includes adding money to a savings account, making IRA contributions, and investing in the stock market. This category also includes debt payments.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategorySection(
    {required String title, required String description}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: AppColors.charcoal),
      ),
      const SizedBox(height: 8),
      Text(
        description,
        style: const TextStyle(fontSize: 16, color: AppColors.charcoal),
      ),
      const SizedBox(height: 20),
    ],
  );
}
