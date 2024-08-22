import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';

class WeeklySalesWidget extends StatelessWidget {
  const WeeklySalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: MainAppColors.cardColor,
              borderRadius: BorderRadius.circular(34),
            ),
            height: 296,
            width: 281,
          ),
          const SizedBox(
            width: 24,
          ),
          Container(
            decoration: BoxDecoration(
              color: MainAppColors.cardColor,
              borderRadius: BorderRadius.circular(34),
            ),
            height: 296,
            width: 600,
          ),
        ],
      ),
    );
  }
}
