import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/features/home/widgets/card_stats_widget.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class MobileWeeklySalesWidget extends StatelessWidget {
  const MobileWeeklySalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Uroos',
          style: TextStyle(color: Colors.white, fontSize: 32.sp),
        ),
        const SizedBox(height: 24),
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
                cardDotsPosition: CardDotsPosition.left,
                backgroundColor: const Color(0xffFAD85D),
              ),
              const SizedBox(
                width: 4,
              ),
              CardStatsWidget(
                title: 'New Clients',
                value: '150',
                imagePath: Assets.images.girl.path,
                cardDotsPosition: CardDotsPosition.left,
                backgroundColor: const Color(0xffF2A0FF),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
