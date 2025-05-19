import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';
import 'package:nop_cart/presentation/core/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(4),
      gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220.w,
        mainAxisSpacing: 10.w,
        crossAxisSpacing: 10.w,
      
      ),
      itemCount: AppConstraints.productData.length,
      itemBuilder: (context, index) {
        final data = AppConstraints.productData[index];
        return IntrinsicHeight(
          child: ProductCard(
            imageUrl: data['imageUrl']! as String,
            title: data['title']! as String,
            price: data['price']! as double,
            originalPrice: data['originalPrice']! as double,
            rating: data['rating']! as double,
          ),
        );
      },
    );
  }
}
