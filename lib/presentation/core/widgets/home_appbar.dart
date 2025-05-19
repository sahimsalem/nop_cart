import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';
import 'package:nop_cart/presentation/core/widgets/circle_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
     
      backgroundColor: Colors.white.withOpacity(0.4),
      elevation: 0, // Disable default elevation to use custom shadow
      flexibleSpace: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0x0D000000), // rgba(0, 0, 0, 0.05)
              offset: Offset(0, 2),
              blurRadius: 3.r,
            ),
          ],
        ),
      ),
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
