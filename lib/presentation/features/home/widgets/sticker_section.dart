import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';

class StickerSection extends StatelessWidget {
  const StickerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                AppConstraints.stickers
                    .map(
                      (sticker) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: sticker,
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
