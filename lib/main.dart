import 'package:explorer/providers/places.dart';
import 'package:explorer/screens/placesListSceen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Places(),
      child: MaterialApp(
        title: 'Explorer',
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesListScreen(),
      ),
    );
  }
}
