import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';

class SalesCalendarWidget extends StatelessWidget {
  const SalesCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0, top: 24, left: 24),
          child: Text(
            'Calendar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: MainAppColors.primaryColor,
              onPrimary: MainAppColors.cardColor,
              onSurface: Colors.white,
            ),
          ),
          child: Flexible(
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
              ).copyWith(
                disableModePicker: true,
              ),
              value: const [],
              onValueChanged: (dates) {},
            ),
          ),
        ),
      ],
    );
  }
}
