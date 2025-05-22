import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/ui/core/constraints/app_constraints.dart';
import 'package:nop_cart/ui/core/ui/banner_widget.dart';
import 'package:nop_cart/ui/core/ui/home_appbar.dart';
import 'package:nop_cart/ui/products/widgets/product_list.dart';
import 'package:nop_cart/ui/products/widgets/sticker_section.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstraints.backgroundColor,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            BannerWidget(imageUrl: AppConstraints.banner),
            SizedBox(height: 29.h),
            Text(
              'Electronics',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppConstraints.fonts,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppConstraints.textColor,
                height: 1.0.h,
              ),
            ),
            SizedBox(height: 30.h),
            StickerSection(),
            SizedBox(height: 22.h),
            ProductList(),
          ],
        ),
      ),
    );
  }
}
