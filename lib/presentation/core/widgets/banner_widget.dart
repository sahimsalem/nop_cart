import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  final String imageUrl;

  const BannerWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
 
    return Container(
      width: double.infinity,
      height: 179.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
    );
  }
}