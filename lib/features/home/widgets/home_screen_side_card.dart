import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/distributions_of_sales_chart.dart';
import 'package:tablet_design/features/home/widgets/side_bar_stats_widget.dart';
import 'package:tablet_design/features/home/widgets/side_bar_values_bar_widget.dart';
import 'package:tablet_design/gen/assets.gen.dart';

class HomeScreenSideCard extends StatelessWidget {
  const HomeScreenSideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 307 - 24,
        height: 808 - 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: MainAppColors.cardColor,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              '(Oreo)',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const DistributionsOfSalesChart(),
                    const SizedBox(
                      height: 12,
                    ),
                    FittedBox(
                      child: Text(
                        'Distributions of sales across platform',
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 12,
                    ),
                    const SideBarStatsWidget(),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 12,
                    ),
                    const SideBarValuesBarWidget(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
