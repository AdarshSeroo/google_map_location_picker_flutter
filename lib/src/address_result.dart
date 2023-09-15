import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../google_map_location_picker_flutter.dart';

class AddressResult {
  LatLng latlng;
  String address;
  List<AddressComponent> components;

  AddressResult(
      {required this.latlng, required this.address, required this.components});
}
