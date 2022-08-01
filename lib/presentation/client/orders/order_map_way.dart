// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';

class OrderMapWay extends StatefulWidget {
  @override
  State<OrderMapWay> createState() => OrderMapWayState();
}

class OrderMapWayState extends State<OrderMapWay> {
  Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  double padding = 0;
  final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.terrain,
        initialCameraPosition: _kGooglePlex,
        padding: EdgeInsets.only(bottom: padding),
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        mapToolbarEnabled: true,
        onMapCreated: (GoogleMapController controller) async {
          _controller.complete(controller);
          setState(() {
            padding = 100;
          });
        },
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const GreySeparator(),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 40),
                  ShadowStatusIndicator(color: SwiftColors.orange),
                  const SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'En route pour prendre la commande',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Livraison en 30 minutes',
                        style: TextStyle(
                          color: SwiftColors.hintGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 20,
                      backgroundColor: SwiftColors.orange,
                      child: Icon(Icons.phone, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

class ShadowStatusIndicator extends StatelessWidget {
  const ShadowStatusIndicator({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11,
      width: 11,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.12),
            blurRadius: 1,
            spreadRadius: 25,
          ),
        ],
      ),
    );
  }
}
