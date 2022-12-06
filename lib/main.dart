// import 'dart:html';

// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/Screens/Login/login_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'Screens/Welcome/welcome_screen.dart';
import 'Services/places_service.dart';
import 'constants2.dart';

//gmaps import
import 'package:google_maps_flutter/google_maps_flutter.dart';
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

import 'models/places.dart';

void main() {
  WidgetsBinding wB = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: wB);
  runApp( MaterialApp(
      title: 'Virtual Tour Museum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: const LoginScreen(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

// class screens extends ChangeNotifier {}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
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
  }

  // final locatorService = GeolocatorService();
  int _selectedIndex = 0; // index of page
  static const List<Widget> screens = <Widget>[
    HomePage(),
    ExplorePage(),
    FavoritePage(),
    ProfilePage()
  ];

  // final screens = [HomePage(), ExplorePage(), FavoritePage(), ProfilePage()];
  void _onItemTapped(int index) {
    print(context);
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget fullScaffold() {
    return Scaffold(
        // body: screens[_index],
        body: IndexedStack(
          index: _selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedIconTheme: IconThemeData(color: Color(0xFF0D1B2A)),
          unselectedItemColor: Color(0xFF0D1B2A),
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: Color(0xFF0D1B2A), size: 27),
          selectedItemColor: Color(0xFF0D1B2A),
          selectedFontSize: 12,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_rounded),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore_rounded),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                activeIcon: Icon(Icons.favorite_rounded),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person_rounded),
                label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return fullScaffold();
    // final locatorService = GeolocatorService();
    // final placesService = PlacesService();
    // print(context);
    // print(Provider.of<Position>(context).latitude);
    // return MultiProvider(
    // providers: [
    //   FutureProvider<Position>(
    //       create: (context) => GeolocatorService().getLocation(),
    //       initialData: Position(
    //         latitude: 0.0,
    //         longitude: 0.0,
    //         accuracy: 1,
    //         altitude: 10,
    //         heading: 0,
    //         speed: 0,
    //         speedAccuracy: 0,
    //         timestamp: DateTime.now(),
    //       )),
    //   // initialData: 0),
    //   ProxyProvider<Position, Future<List<Place>>?>(
    //     update: (context, position, places) {
    //       // return placesService.getPlaces(
    //       //     position.latitude, position.longitude);
    //       return (position != null) ? placesService.getPlaces(position.latitude, position.longitude) : null;
    //     },
    //   )
    // ],
    // child: fullScaffold(),
    // );
  }
}

// FutureProvider(
//           initialData: Center(child: CircularProgressIndicator()),
//           create: (context) => locatorService.getLocation(),
//           child:
