// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Explorer'),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
    ));
  }
}
