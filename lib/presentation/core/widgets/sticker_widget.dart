import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';

class StickerWidget extends StatelessWidget {
  final String imageUrl;
  final String label;

  const StickerWidget({super.key, required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.r),
    
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1000.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 35.r, backgroundImage: NetworkImage(imageUrl)),
          SizedBox(width: 12.w),
          Text(
            label,
            style:  TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,color: AppConstraints.textColor),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: 11.w),
        ],
      ),
    );
  }
}
