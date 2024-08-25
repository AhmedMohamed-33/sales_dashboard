import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/card_dots_design.dart';

enum CardDotsPosition {
  left,
  right,
  center,
}

class CardStatsWidget extends StatelessWidget {
  const CardStatsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.imagePath,
    required this.cardDotsPosition,
    required this.backgroundColor,
  });
  final String title;
  final String value;
  final String imagePath;
  final CardDotsPosition cardDotsPosition;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 160,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
        color: backgroundColor,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 12, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: MainAppColors.cardColor,
                        fontSize: 16.sp,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      value,
                      style: TextStyle(
                        color: MainAppColors.cardColor,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View entire list',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: MainAppColors.cardColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(children: [
                Image.asset(
                  imagePath,
                ),
              ]),
            ),
            CardDotsDesign(
              cardDotsPosition: cardDotsPosition,
            ),
          ],
        ),
      ),
    );
  }
}
