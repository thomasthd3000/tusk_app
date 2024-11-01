// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:course_tusk_app/common/app_color.dart';

class FailedUI extends StatelessWidget {
  const FailedUI({
    Key? key,
    this.icon,
    required this.message,
    this.margin,
  }) : super(key: key);
  final IconData? icon;
  final String message;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon ?? Icons.error,
              color: Colors.grey,
              size: 30,
            ),
            const Gap(20),
            Text(
              message,
              style: TextStyle(color: AppColor.textBody),
            ),
          ],
        ),
      ),
    );
  }
}
