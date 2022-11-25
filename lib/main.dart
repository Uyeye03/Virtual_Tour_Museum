import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'constants2.dart';

//gmaps import
import 'package:virtual_tour_museum/Services/geolocator_service.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';

//screens import
// import 'screens/login_screen/login_screen.dart';
import 'package:virtual_tour_museum/constants.dart';
import 'package:virtual_tour_museum/screens/explore/explore.dart';
import 'package:virtual_tour_museum/screens/favorites/favorites.dart';
import 'package:virtual_tour_museum/screens/home/home.dart';
import 'package:virtual_tour_museum/screens/profile/profile.dart';

void main() {
  WidgetsBinding wB = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: wB);
  runApp(MaterialApp(
    title: 'Virtual Tour Museum',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        )),
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final locatorService = GeolocatorService();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int index = 0; // index of page
  final screens = [HomePage(), ExplorePage(), FavoritePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color(0xFF778DA9),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
        child: FutureProvider(
          initialData: Center(child: CircularProgressIndicator()),
          create: (context) => locatorService.getLocation(),
          child: NavigationBar(
          height: 70,
          backgroundColor: Color(0xFFf1f5fb),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.explore_outlined),
                selectedIcon: Icon(Icons.explore),
                label: 'Explore'),
            NavigationDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: 'Favorite'),
            NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile'),
          ],
        ),
      ),
    )
    );
  }
}
