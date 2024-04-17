import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DonationScreen extends StatefulWidget {
   const DonationScreen({super.key});
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}


class _DonationScreenState extends State<DonationScreen> {
  static const googlePlex = LatLng(30.2690, 77.9916);
  
  @override
  void initState() {
    super.initState();
  }
  
  @override
   // ignore: prefer_const_constructors
   Widget build(BuildContext context)=> const Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: googlePlex,
          zoom: 17,
        ),
      )
    );
   }
  
  


