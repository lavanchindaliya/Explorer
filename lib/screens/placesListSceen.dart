// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:explorer/providers/places.dart';
import 'package:explorer/screens/addPlacesScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      ),
      body: Consumer<Places>(
        child: Center(
          child: Text("Nothing here"),
        ),
        builder: (context, places, child) => places.item.length <= 0
            ? ListView.builder(
                itemCount: places.item.length,
                itemBuilder: ((context, index) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: FileImage(places.item[index].image),
                      ),
                      title: Text(places.item[index].titile),
                    )))
            : child!,
      ),
    );
  }
}
