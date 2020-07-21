import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('Locations'),
        ),
        body: ListView(
          children: locations
              .map((location) => GestureDetector(
                  child: RaisedButton(
                      color: isButtonPressed ? Colors.lightGreen : Colors.blue,
                      child: Text(
                        location.name,
                        style: TextStyle(color: Colors.black),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white)),
                      onPressed: () => {
                            isButtonPressed != isButtonPressed,
                            _onLocationTap(context, location.id),
                          })))
              .toList(),
        ));
    return null;
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
}
