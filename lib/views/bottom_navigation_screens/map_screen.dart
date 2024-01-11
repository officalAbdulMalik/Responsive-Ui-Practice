import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/app_colors.dart';
import '../../models/app_custom_icon.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(
        target:  LatLng(34.025917, 71.560135),
        zoom: 14.4746,
      ),),
    );
  }
}
