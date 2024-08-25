import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/features/home/widgets/gradient_progress_bar.dart';

class SideBarValuesBarWidget extends StatelessWidget {
  const SideBarValuesBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SideBarValuesMainWidget(
          title: 'Online Visitors',
          value: '20k',
          progress: 0.5,
        ),
        SizedBox(
          height: 24,
        ),
        SideBarValuesMainWidget(
          title: 'Offline Visitors',
          value: '7k',
          progress: 0.2,
        ),
      ],
    );
  }
}

class SideBarValuesMainWidget extends StatelessWidget {
  const SideBarValuesMainWidget({
    super.key,
    required this.title,
    required this.value,
    required this.progress,
  });
  final String title;
  final String value;
  final double progress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.sp,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
          ),
        ),
        GradientProgressBar(progress: progress),
      ],
    );
  }
}
