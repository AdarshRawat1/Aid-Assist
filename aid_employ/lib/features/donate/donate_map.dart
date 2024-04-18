import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:aid_employ/core/constants/constants.dart';

class DonationScreen extends StatefulWidget {
   const DonationScreen({super.key});
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}


class _DonationScreenState extends State<DonationScreen> {
  final LocationController=Location();

  static const googlePlex = LatLng(30.2690, 77.9916);
  static const googlePlex2 = LatLng(37.2, -122.184);
  
LatLng? currentPosition;
Map <PolylineId, Polyline> polylines={};


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
    .addPostFrameCallback((_)async => await initializeMap());
  }
  
  Future <void> initializeMap() async {
    await fetchlocationUpdates();
    final coordinates= await fetchPolylinePoints();
    generatePolyLineFromPoints(coordinates);
  }

  @override
   // ignore: prefer_const_constructors
   Widget build(BuildContext context)=> Scaffold(
      body:currentPosition == null
      ?const Center(child: CircularProgressIndicator())
      : GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: googlePlex,
          zoom: 13,
        ),
        markers: {
          Marker(
              markerId: MarkerId('user'),
              icon: BitmapDescriptor.defaultMarker,
              position: currentPosition!,
          ),
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
          polylines:Set<Polyline>.of(polylines.values),
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

Future<List<LatLng>> fetchPolylinePoints()async {
  final polylinePoints=PolylinePoints();
  final result = await polylinePoints.getRouteBetweenCoordinates(
    Constants.googleMapsApiKey,
    PointLatLng(googlePlex.latitude,googlePlex.longitude) ,
     PointLatLng(googlePlex2.latitude,googlePlex2.longitude)
    );
    if(result.points.isNotEmpty){
      return result.points
      .map((point)=> LatLng(point.latitude, point.longitude))
      .toList();
    }
    else {
      debugPrint(result.errorMessage);
      return [];
    }
}

Future<void> generatePolyLineFromPoints( 
  List<LatLng> polylineCoordinates) async{
    const id = PolylineId('polyline');

    final polyline = Polyline(
      polylineId:id,
      color: Colors.blue,
      points:polylineCoordinates,
      width: 5,
    );
  setState(()=> polylines[id]=polyline);

  }
}

  
  
