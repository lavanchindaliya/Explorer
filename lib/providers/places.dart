import 'package:explorer/models/place.dart';
import 'package:flutter/foundation.dart';

class Places with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get item {
    return [..._items];
  }
}
