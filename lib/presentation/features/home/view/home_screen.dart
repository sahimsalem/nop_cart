import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';
import 'package:nop_cart/presentation/core/widgets/home_appbar.dart';
import 'package:nop_cart/presentation/features/home/widgets/product_list.dart';
import 'package:nop_cart/presentation/features/home/widgets/sticker_section.dart';
import '../../../core/widgets/banner_widget.dart';

// ... existing code ...

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color.fromRGBO(241, 243, 245, 1),
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
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
              StickerSection(),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }
}


