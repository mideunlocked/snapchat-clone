import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DotSeperator extends StatelessWidget {
  const DotSeperator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: 3.sp,
      color: Colors.grey,
    );
  }
}
