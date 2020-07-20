import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children:
          locations.map((location) => GestureDetector(
            child: Text(location.name),
            onTap: () => _onLocationTap(context, location.id),
          ))
            .toList(),
      )
    );
    return null;
  }

   _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,arguments: {"id": locationID});
  }
}