import 'dart:io';

class Location {
  final double latitude;
  final double longitude;
  final String adress;
  Location(
      {required this.latitude, required this.longitude, required this.adress});
}

class Place {
  final String id;
  final String titile;
  final Location location;
  final File image;

  Place(
      {required this.id,
      required this.titile,
      required this.location,
      required this.image});
}
