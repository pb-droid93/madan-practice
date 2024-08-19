import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

class LocationTest extends StatefulWidget {
  const LocationTest({super.key});

  @override
  State<LocationTest> createState() => _LocationTestState();
}

class _LocationTestState extends State<LocationTest> {
  Position? position;
  String? latitude;
  String? longitude;

  fetchLocation() async {
    bool serviceEnable;
    LocationPermission permission;
    serviceEnable = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnable) {
      Fluttertoast.showToast(msg: 'Location Service is Disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "You denied the permission");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'You denied the permission forever');
    }
    Position currentPostion = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPostion;
      latitude = currentPostion.latitude.toString();
      longitude = currentPostion.longitude.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          titleText: "Location",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                position == null ? "Location" : position.toString(),
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    fetchLocation();
                  },
                  child: const Text('Get Location')),
            ],
          ),
        ),
      ),
    );
  }
}
