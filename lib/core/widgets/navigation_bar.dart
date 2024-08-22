import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MainAppColors.cardColor,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SvgPicture.asset(Assets.images.frame),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Icon(Icons.home_outlined, color: Colors.white),
                ),
                NavbarIconTheme(assetsPath: Assets.images.groups),
                NavbarIconTheme(assetsPath: Assets.images.files),
                NavbarIconTheme(assetsPath: Assets.images.comments),
                NavbarIconTheme(assetsPath: Assets.images.balance),
                NavbarIconTheme(assetsPath: Assets.images.profile),
                NavbarIconTheme(assetsPath: Assets.images.settings),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class NavbarIconTheme extends StatelessWidget {
  const NavbarIconTheme({
    super.key,
    required this.assetsPath,
  });
  final String assetsPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SvgPicture.asset(
        assetsPath,
      ),
    );
  }
}
