import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/ui/responsive/desktop_body.dart';
import 'package:virtual_tour_museum/ui/responsive/mobile_body.dart';
import 'package:virtual_tour_museum/ui/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  } // index of page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: HomeMobileBody(),
        desktopLayout: HomeDesktopBody(),
      ),
    );
  }
}
