import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double originalPrice;
  final double rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.originalPrice,
    this.rating = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1, 
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 15.h,
                left: 15.w,
                child: Icon(
                  Icons.favorite_border,
                  size: 16.sp,
                  color: Color.fromRGBO(255, 32, 45, 1),
                ),
              ),
              Positioned(
                bottom: 8.h,
                right: 8.w,
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/basket.png',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Content section
          Padding(
            padding: EdgeInsets.fromLTRB(
              10.h,
              13.h,
              10.h,
              24.h,
            ), 
            child: Column(
              children: [
                // Title
                SizedBox(
                  height: 22.h,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppConstraints.textColor,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 10.h),
                // Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      size: 10.sp,
                      color: Colors.amber,
                    );
                  }),
                ),
                // Price section
                SizedBox(height: 10.h),
                Wrap(
                  spacing: 6.w,
                  runSpacing: 2.h,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      '\$${price.toString()}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontFamily: 'Barlow',
                        color: Colors.blue,
                        fontSize: 10.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '\$${originalPrice.toString()}',
                      style: TextStyle(
                         fontFamily: 'Barlow',
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 10.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
