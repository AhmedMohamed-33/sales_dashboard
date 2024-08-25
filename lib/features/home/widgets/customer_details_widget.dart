import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';
import 'package:tablet_design/features/home/widgets/customer_details_table_widget.dart';

class CustomerDetailsWidget extends StatelessWidget {
  const CustomerDetailsWidget({super.key});

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
              Text(
                'Customer Details',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                  onPressed: () {},
                  color: MainAppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    'Download',
                    style: TextStyle(
                        color: MainAppColors.cardColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
        const Expanded(child: CustomerDetailsTable()),
      ],
    );
  }
}
