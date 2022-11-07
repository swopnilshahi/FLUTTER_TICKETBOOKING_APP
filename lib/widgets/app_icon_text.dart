import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Gap(AppLayout.getWidth(12)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
