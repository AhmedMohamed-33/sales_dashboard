import 'package:flutter/material.dart';
import 'package:tablet_design/core/widgets/navigation_bar.dart';
import 'package:tablet_design/features/home/screens/home_screen.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        NavigationBarWidget(),
        HomeScreen(),
      ],
    );
  }
}
