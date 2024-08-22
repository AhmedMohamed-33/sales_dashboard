import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class HomeScreenSideCard extends StatelessWidget {
  const HomeScreenSideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            width: 307 - 24,
            height: 808 - 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: MainAppColors.cardColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(Assets.images.rectangle.path),
                      const SizedBox(
                        width: 8,
                      ),
                      const Column(
                        children: [
                          Text(
                            'petshop.com',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            '(Oreo)',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
