import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:virtual_tour_museum/Screens/home/museum_card.dart';
import 'package:virtual_tour_museum/Services/places_service.dart';

import '../../models/places.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  GoogleMapController? _controller;
  Location _loc = Location();
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  double? uLat = 0.0;
  double? uLng = 0.0;

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _loc.onLocationChanged.listen((l) {
      uLat = l.latitude;
      uLng = l.longitude;
      _controller!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //buat ngambil position user dari service
    final currentPosition = Provider.of<Position>(context);
    final placesProvider = Provider.of<Future<List<Place>>?>(context);
    final nearbyMuseum = PlacesService().getPlaces(uLat!, uLng!);
    print(context);

    // return FutureBuilder<List<Place>>(
    //     future: nearbyMuseum,
    //     builder: (context, nearbyMuseum) {
    //       if (nearbyMuseum.connectionState == ConnectionState.waiting) {
    //         return Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       } else {
    //         if (nearbyMuseum.hasData) {
    //           return Column(
    //             children: <Widget>[
    //               Container(
    //                 height: MediaQuery.of(context).size.height / 3,
    //                 width: MediaQuery.of(context).size.width,
    //                 child: GoogleMap(
    //                   initialCameraPosition: CameraPosition(
    //                       target: LatLng(currentPosition.latitude,
    //                           currentPosition.longitude),
    //                       zoom: 16.0),
    //                   // initialCameraPosition:
    //                   //     CameraPosition(target: _initialcameraposition),
    //                   mapType: MapType.normal,
    //                   onMapCreated: _onMapCreated,
    //                   zoomGesturesEnabled: true,
    //                   myLocationEnabled: true,
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Expanded(
    //                 child: ListView.builder(
    //                     itemCount: nearbyMuseum.data!.length,
    //                     itemBuilder: (context, index) {
    //                       return MuseumCard(
    //                           index: index,
    //                           name: nearbyMuseum.data![index].name,
    //                           image:
    //                               "D:/Semester 5/ManPro/VR App/Virtual_Tour_Museum/assets/images/museum_10_november.jpg",
    //                           address: nearbyMuseum.data![index].vicinity,
    //                           length: 1);
    //                     }),
    //               )
    //             ],
    //           );
    //         } else {
    //           return Center(child: CircularProgressIndicator());
    //         }
        //   }
        // });
    return FutureProvider<List<Place>>(
        create: (context) => placesProvider,
        initialData: [],
        child: Scaffold(body: Consumer<List<Place>>(
          builder: (_, places, __) {
            // return Scaffold(
            // body:
            return Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: LatLng(currentPosition.latitude,
                            currentPosition.longitude),
                        zoom: 16.0),
                    // initialCameraPosition:
                    //     CameraPosition(target: _initialcameraposition),
                    mapType: MapType.normal,
                    onMapCreated: _onMapCreated,
                    zoomGesturesEnabled: true,
                    myLocationEnabled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        return MuseumCard(
                            index: index,
                            name: places[index].name,
                            image:
                                "D:/Semester 5/ManPro/VR App/Virtual_Tour_Museum/assets/images/museum_10_november.jpg",
                            address: places[index].vicinity,
                            length: 1);
                      }),
                )
              ],
            );
          },
        )
            // }))
            // }
            //
            ));
  }
}
