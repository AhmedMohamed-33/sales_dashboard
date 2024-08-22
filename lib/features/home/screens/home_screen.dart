import 'package:flutter/material.dart';
import 'package:tablet_design/core/widgets/main_app_bar.dart';
import 'package:tablet_design/features/home/widgets/home_screen_main_widget.dart';
import 'package:tablet_design/features/home/widgets/home_screen_side_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 24),
          child: MainAppBar(),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 148,
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height - 100,
            child: const Row(
              children: [
                Flexible(flex: 5, child: HomeScreenMainWidget()),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  flex: 2,
                  child: HomeScreenSideCard(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
