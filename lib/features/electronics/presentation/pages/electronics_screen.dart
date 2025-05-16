import 'package:flutter/material.dart';
import 'package:nop_cart/core/constraints/app_constraints.dart';
import 'package:nop_cart/features/electronics/presentation/pages/product_list.dart';
import 'package:nop_cart/features/electronics/presentation/pages/sticker_section.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/banner_widget.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color.fromRGBO(241, 243, 245, 1),
        
          child: Column(
            
            children:const [
              BannerWidget(imageUrl: AppConstraints.banner),
               StickerSection(),
               ProductList()
            ],
          ),
        ),
      ),
    );
  }
}
