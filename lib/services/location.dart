import 'package:geolocator/geolocator.dart';

class Locaction {
  double? long;
  double? lat;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      // Position position = await Geolocator.getCurrentPosition(
      //     desiredAccuracy: LocationAccuracy.low);

      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
      // Position? positions = await Geolocator.getLastKnownPosition(
      //     forceAndroidLocationManager: false);
      // lat = positions?.latitude;
      // long = positions?.longitude;
    }
  }
}
