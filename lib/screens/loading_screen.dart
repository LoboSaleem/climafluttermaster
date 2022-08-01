import 'package:climafluttermaster/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.deepOrange,
          size: 100.0,
        ),
      ),
    );
  }
}
// lat = 15.351267;
// long = 44.1950095;

// RaisedButton(
// onPressed: () {
// getData();

// },
// child: Text('Get Location'),
// ),
