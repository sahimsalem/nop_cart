import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';

class StickerSection extends StatelessWidget {
  const StickerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  AppConstraints.stickers
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
