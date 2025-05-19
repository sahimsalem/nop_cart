import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = [
      {
        'imageUrl': 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Wireless Headphones',
        'price': 120.00, // Fixed large price
        'originalPrice': 200.00,
        'rating': 2.5,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Smartphone',
        'price': 800.00,
        'originalPrice': 1000.00,
        'rating': 3.7,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Build your own computer',
        'price': 250.00,
        'originalPrice': 300.00,
        'rating': 1.3,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Laptop',
        'price': 100000000000000.00,
        'originalPrice': 120000000000000000.00,
        'rating': 3.6,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Wireless Headphones',
        'price': 120.00, // Fixed large price
        'originalPrice': 200.00,
        'rating': 2.5,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Smartphone',
        'price': 800.00,
        'originalPrice': 1000.00,
        'rating': 3.7,
      },
      {
        'imageUrl': 'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
        'title': 'Build your own computer',
        'price': 250.00,
        'originalPrice': 300.00,
        'rating': 1.3,
      },
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 400
        ? 2
        : screenWidth < 600
            ? 3
            : screenWidth < 900
                ? 4
                : 5;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250, // Maximum width per card
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.75, // Adjusted for better content fit
      ),
      itemCount: productData.length,
      itemBuilder: (context, index) {
        final data = productData[index];
        return ProductCard(
          imageUrl: data['imageUrl']! as String,
          title: data['title']! as String,
          price: data['price']! as double,
          originalPrice: data['originalPrice']! as double,
          rating: data['rating']! as double,
        );
      },
    );
  }
}