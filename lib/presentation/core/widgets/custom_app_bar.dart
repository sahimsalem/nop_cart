import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/widgets/circle_button.dart';
import '../constraints/app_constraints.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          toolbarHeight: 72.h,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            constraints: BoxConstraints(minWidth: 20.w, minHeight: 16.h),
            icon: Icon(
              Icons.arrow_back,
              color: AppConstraints.iconColor,
              size: 20.w,
            ),
            onPressed: () {},
          ),

          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleIconButton(icon: Icons.filter_alt),
                SizedBox(width: 10.w),
                CircleIconButton(icon: Icons.tune),
                SizedBox(width: 20.w),
              ],
            ),
          ],
        );
  }

  @override
  Size get preferredSize => Size.fromHeight(72.h);
}
