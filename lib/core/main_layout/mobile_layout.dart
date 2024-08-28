import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/home_screen_side_card.dart';
import 'package:tablet_design/features/home/widgets/mobile_weekly_sales_widget.dart';
import 'package:tablet_design/features/home/widgets/sales_calendar_widget.dart';
import 'package:tablet_design/features/home/widgets/weekly_sales_chart.dart';

import '../../gen/assets.gen.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MainAppColors.backgroundColor,
      endDrawer: const HomeScreenSideCard(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset(Assets.images.dashboard),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                icon: const Icon(Icons.menu)),
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
                const MobileWeeklySalesWidget(),
                const SizedBox(height: 24),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MainAppColors.cardColor,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    height: 296,
                    width: 281,
                    child: const SalesCalendarWidget(),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: MainAppColors.cardColor,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    height: 296,
                    width: 281,
                    child: WeeklySalesChartWidget(),
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
