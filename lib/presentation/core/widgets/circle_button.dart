import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;

  const CircleIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 53.w,
      height: 53.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: const Color(0x0D000000),
            offset: const Offset(0, 2),
            blurRadius: 7.r,
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(17.5.r),
          child: Icon(
            icon,
            color: const Color(0xFF071B4D),
            size: 18.sp,
          ),
        ),
      ),
    );
  }
}