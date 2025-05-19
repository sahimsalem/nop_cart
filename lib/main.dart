import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nop_cart/presentation/features/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        Size designSize;
        if (width >= 900) {
          // Desktop
          designSize = const Size(1200, 900);
        } else if (width >= 600) {
          // Tablet
          designSize = const Size(800, 1280);
        } else {
          // Phone
          designSize = const Size(428, 1136);
        }
        return ScreenUtilInit(
          designSize: designSize,
          enableScaleWH: () => true,
          enableScaleText: () => true,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              home: child,
            );
          },
          child: const HomeScreen(),
        );
      },
    );
  }
}
