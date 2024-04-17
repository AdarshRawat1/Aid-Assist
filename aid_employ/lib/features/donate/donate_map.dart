import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class DonationScreen extends StatefulWidget {
   const DonationScreen({super.key});
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}


class _DonationScreenState extends State<DonationScreen> {
  final LocationController=location();

  static const googlePlex = LatLng(30.2690, 77.9916);
  static const googlePlex2 = LatLng(30.29, 78);
  
LatLng? currentPosition;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
    .addPostFrameCallback((_)async => await fetchlocationUpdates());
  }
  
  @override
   // ignore: prefer_const_constructors
   Widget build(BuildContext context)=> Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: googlePlex,
          zoom: 13,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('Source'),
            icon :BitmapDescriptor.defaultMarker,
            position: googlePlex,
            ),
           const Marker(
              markerId: MarkerId('Destination'),
              icon: BitmapDescriptor.defaultMarker,
              position: googlePlex2,
            ),
          },
      ),
   );

Future<void> fetchlocationUpdates () async {
  bool serviceEnabled;
  PermissionStatus permissionGranted;
  serviceEnabled = await LocationController.serviceEnabled();
  if(serviceEnabled){
    serviceEnabled= await LocationController.requestService();
  }
  else {
    return;
  }

  permissionGranted = await LocationController.hasPermission();
  if(permissionGranted==PermissionStatus.denied){
    permissionGranted=await LocationController.requestPermission();
    if(permissionGranted!=PermissionStatus.granted){
      return;
    }
  }

  LocationController.onLocationChanged.listen((currentLocation){
    if(currentLocation.latitude!=null &&
          currentLocation.longitude!=null){
            setState(() {
              currentPosition=LatLng(
                currentLocation.latitude!,
                currentLocation.longitude!,
              );
            });
          }
  });
}
}
  
  
