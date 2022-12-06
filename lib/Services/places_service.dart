import '../models/places.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PlacesService {
  final key = "AIzaSyAkMuV5aSdtMKE2DXOEAuNKfdhUp7nc8Ao";

  Future<List<Place>> getPlaces(double lat, double lng) async {
    var response = await http.get(Uri.parse(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=museum&rankby=distance&key=$key'));
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['result'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
}
