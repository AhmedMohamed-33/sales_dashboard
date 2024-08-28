import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/card_stats_widget.dart';

import '../../gen/assets.gen.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainAppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset(Assets.images.dashboard),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 15,
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                  child: Center(
                    child: TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Search',
                    )),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Hello, Uroos',
                  style: TextStyle(color: Colors.white, fontSize: 32.sp),
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CardStatsWidget(
                        title: 'Weekly balance',
                        value: '\$ 4,000',
                        imagePath: Assets.images.walletPng.path,
                        cardDotsPosition: CardDotsPosition.left,
                        backgroundColor: const Color(0xff0BF4C8),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CardStatsWidget(
                        title: 'Orders In Line',
                        value: '750',
                        imagePath: Assets.images.mobile.path,
                        cardDotsPosition: CardDotsPosition.center,
                        backgroundColor: const Color(0xffFAD85D),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      CardStatsWidget(
                        title: 'New Clients',
                        value: '150',
                        imagePath: Assets.images.girl.path,
                        cardDotsPosition: CardDotsPosition.right,
                        backgroundColor: const Color(0xffF2A0FF),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
