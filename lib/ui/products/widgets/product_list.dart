import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/ui/core/constraints/app_constraints.dart';
import 'package:nop_cart/ui/core/ui/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.w,
      children:
          AppConstraints.productData.map((data) {
            return ConstrainedBox(
              constraints: BoxConstraints(minWidth: 100.w, maxWidth: 120.w),
              child: ProductCard(
                imageUrl: data['imageUrl']! as String,
                title: data['title']! as String,
                price: data['price']! as double,
                originalPrice: data['originalPrice']! as double,
                rating: data['rating']! as double,
              ),
            );
          }).toList(),
    );
  }
}
