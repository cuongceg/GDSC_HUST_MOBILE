import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late GoogleMapController _googleMapController;
  final _currentUserLocation =
      const LatLng(21.00490732707305, 105.84493770144671);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: CameraPosition(
        target: _currentUserLocation,
        zoom: 15,
      ),
      myLocationButtonEnabled: true,
      zoomControlsEnabled: false,
      compassEnabled: false,
      onMapCreated: (controller) {
        _googleMapController = controller;
      },
    ));
  }
}
