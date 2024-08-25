import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBarStatsWidget extends StatelessWidget {
  const SideBarStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SidebarStatsRowWidget(
          title: 'Total Intake',
          value: '1500k',
        ),
        SidebarStatsRowWidget(
          title: 'New Customers',
          value: '7k',
        ),
        SidebarStatsRowWidget(
          title: 'Repeat Customers',
          value: '1.5k',
        ),
        SidebarStatsRowWidget(
          title: 'Total Revenue',
          value: '130k',
        ),
      ],
    );
  }
}

class SidebarStatsRowWidget extends StatelessWidget {
  const SidebarStatsRowWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
