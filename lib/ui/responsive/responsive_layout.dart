import 'package:flutter/cupertino.dart';
import 'package:virtual_tour_museum/ui/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;

  ResponsiveLayout({required this.mobileLayout, required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // buat tampilan responsif, kalau kurang dari mobileWidth masuk ke mobileLayout
        // kalau lebih besar dari mobileWidth masuk ke desktopLayout
        // ukuran mobileWidth bisa diubah-ubah di file dimensions.dart
        if (constraints.maxWidth < mobileWidth) {
          return mobileLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
