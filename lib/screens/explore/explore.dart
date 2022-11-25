import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    //buat ngambil position user dari service
    final currentPosition = Provider.of<Position>(context);
    print(currentPosition.latitude);
    return Scaffold(
      body: (currentPosition != null)
          ? Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(currentPosition.latitude,
                              currentPosition.longitude),
                          zoom: 16.0),
                      zoomGesturesEnabled: true,
                    ))
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
