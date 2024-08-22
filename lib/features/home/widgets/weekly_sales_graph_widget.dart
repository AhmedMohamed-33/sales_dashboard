import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class SalesGraphWidget extends StatelessWidget {
  const SalesGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sales',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                  onPressed: () {},
                  color: MainAppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: const Text(
                    'Download',
                    style: TextStyle(
                        color: MainAppColors.cardColor,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              const SizedBox(
                  width: 476 - 24, height: 170, child: Placeholder()),
              SizedBox(
                width: 138 - 48,
                height: 216,
                child: Image.asset(
                  Assets.images.salesGirl.path,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
