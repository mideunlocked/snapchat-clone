import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final Function onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white10,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          icon,
          height: 5.h,
          width: 5.w,
          color: Colors.white,
        ),
      ),
    );
  }
}
