// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:explorer/screens/addPlacesScreen.dart';
import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Explorer'),
      actions: [
        IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName),
            icon: Icon(Icons.add))
      ],
    ));
  }
}
