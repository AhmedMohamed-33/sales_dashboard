import 'package:flutter/material.dart';
import 'package:tablet_design/features/home/widgets/sales_widget.dart';
import 'package:tablet_design/features/home/widgets/weekly_balance_widget.dart';
import 'package:tablet_design/features/home/widgets/weekly_sales_widget.dart';

class HomeScreenMainWidget extends StatelessWidget {
  const HomeScreenMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              WeeklyBalanceWidget(),
              SizedBox(height: 24),
              SalesWidget(),
              SizedBox(height: 24),
              WeeklySalesWidget(),
            ],
          ),
        )
      ],
    );
  }
}
