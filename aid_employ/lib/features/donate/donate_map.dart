import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreen();
}

class _DonationScreen extends State<DonationScreen> {
  static const googlePlex = LatLng(30.2870, 77.9983);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>const Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: googlePlex, 
            zoom: 13
            )
          )
      );
}
