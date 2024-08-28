import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/core/main_layout/desktop_layout.dart';
import 'package:tablet_design/core/main_layout/mobile_layout.dart';
import 'package:tablet_design/core/widgets/adabtive_layout.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainAppColors.backgroundColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const DesktopLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
