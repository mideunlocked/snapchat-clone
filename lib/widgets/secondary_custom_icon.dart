import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondayCustomIcon extends StatelessWidget {
  const SecondayCustomIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final Function onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        icon,
        color: Colors.grey.shade400,
        height: 5.h,
        width: 5.w,
      ),
    );
  }
}
