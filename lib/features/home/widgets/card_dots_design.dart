import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/card_stats_widget.dart';

class CardDotsDesign extends StatelessWidget {
  const CardDotsDesign({super.key, required this.cardDotsPosition});
  final CardDotsPosition cardDotsPosition;
  @override
  Widget build(BuildContext context) {
    switch (cardDotsPosition) {
      case CardDotsPosition.left:
        return Positioned(
            bottom: 160 / 6,
            right: -8,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                )
              ],
            ));
      case CardDotsPosition.right:
        return Positioned(
            bottom: 160 / 6,
            left: -8,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 34),
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MainAppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 20,
                  height: 10,
                )
              ],
            ));
      case CardDotsPosition.center:
        return Stack(
          children: [
            Positioned(
                bottom: 160 / 6,
                right: -8,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 34),
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 34),
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    )
                  ],
                )),
            Positioned(
                bottom: 160 / 6,
                left: -8,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 34),
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 34),
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MainAppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: 20,
                      height: 10,
                    )
                  ],
                )),
          ],
        );
    }
  }
}
