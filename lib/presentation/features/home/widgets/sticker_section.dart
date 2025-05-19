import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/widgets/sticker_widget.dart';

class StickerSection extends StatelessWidget {
  const StickerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final stickers = [
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

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Electronics',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  stickers
                      .map(
                        (sticker) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: sticker,
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
