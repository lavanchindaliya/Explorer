import 'package:explorer/models/place.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class Places with ChangeNotifier {
  void addPlace(String pickedTitle, File pickedImage) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        titile: pickedTitle,
        location: null,
        image: pickedImage);
    _items.add(newPlace);
    notifyListeners();
  }

  List<Place> _items = [];

  List<Place> get item {
    return [..._items];
  }
}
