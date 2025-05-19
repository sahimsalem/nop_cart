import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/widgets/sticker_widget.dart';

class AppConstraints {
  //Color
  static const Color appBarBackground = Color(0x66FFFFFF);
  static const Color appBarShadow = Color(0x0D000000);
  static const Color iconColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color textColor = Color(0xFF000000);


  //fonts
  static const String fonts = 'Lato';


  //Url
  static const String banner =
      'https://i.ibb.co/R4CGpjzk/apple-iphone-12-spring21-purple-04202021-big-jpg-large-1.png';

  //card data
  static final productData = [
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Wireless Headphones',
      'price': 120.00, // Fixed large price
      'originalPrice': 200.00,
      'rating': 2.5,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Smartphone',
      'price': 800.00,
      'originalPrice': 1000.00,
      'rating': 3.7,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Build your own computer',
      'price': 250.00,
      'originalPrice': 300.00,
      'rating': 1.3,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Laptop',
      'price': 100000000000000.00,
      'originalPrice': 120000000000000000.00,
      'rating': 3.6,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Wireless Headphones',
      'price': 120.00, // Fixed large price
      'originalPrice': 200.00,
      'rating': 2.5,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Smartphone',
      'price': 800.00,
      'originalPrice': 1000.00,
      'rating': 3.7,
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1593642634367-d91a135587b5?auto=format&fit=crop&w=150&h=150&q=80',
      'title': 'Build your own computer',
      'price': 250.00,
      'originalPrice': 300.00,
      'rating': 1.3,
    },
  ];
  
  //sticer data

  static  final stickers = [
      const StickerWidget(
        imageUrl:
            'https://images.unsplash.com/photo-1518770660439-4636190af475?auto=format&fit=crop&w=60&h=60&q=80',
        label: 'Computer',
      ),
      const StickerWidget(
        imageUrl:
            'https://images.unsplash.com/photo-1711567008221-4a85cb7acc70?q=80&w=2070&auto=format&fit=crop',
        label: 'Electronics',
      ),
      const StickerWidget(
        imageUrl:
            'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=60&h=60&q=80',
        label: 'Phones',
      ),
      const StickerWidget(
        imageUrl:
            'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=60&h=60&q=80',
        label: 'Accessories',
      ),
    ];


}
