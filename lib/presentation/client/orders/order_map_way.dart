// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';

class OrderMapWay extends StatefulWidget {
  @override
  State<OrderMapWay> createState() => OrderMapWayState();
}

class OrderMapWayState extends State<OrderMapWay> {
  List<LatLng> domainpolyLines = [];
  String polylinepoints =
      'ync_Fmu|QBGOCmAQLcEYqCKs@KqAOo@[q@_@e@wA}@s@i@k@[Y[SYG_@Sq@MO_@Y?A@??C?GAGAA^sAbAuFVwBHoARcDNeBBA^]b@{@FKLG@@B@@BH?DEBG@EBC';
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

  BitmapDescriptor icon1 = BitmapDescriptor.defaultMarker;
  BitmapDescriptor icon2 = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        size: Size(20, 20),
      ),
      'assets/icons/map_restaurant.png',
    ).then(
      (value) => icon1 = value,
    );
    BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      'assets/icons/map_liv.wraison.png',
    ).then(
      (value) => icon2 = value,
    );
    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> result = polylinePoints.decodePolyline(polylinepoints);
    domainpolyLines = result.map((e) => LatLng(e.latitude, e.longitude)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          padding: EdgeInsets.only(bottom: padding),
          polylines: {
            Polyline(
              polylineId: PolylineId('re'),
              points: domainpolyLines,
              color: SwiftColors.orange,
            )
          },
          markers: {
            Marker(
              markerId: MarkerId('1'),
              position: domainpolyLines[0],
              icon: icon1,
            ),
            Marker(
              markerId: MarkerId('2'),
              position: domainpolyLines[domainpolyLines.length - 1],
              icon: icon2,
            ),
          },
          circles: {},
          onMapCreated: (GoogleMapController controller) async {
            _controller.complete(controller);
            setState(() {
              padding = 100;
            });
            LatLngBounds bounds;
            LatLng pickup = domainpolyLines[0];
            LatLng destin = domainpolyLines[domainpolyLines.length - 1];
            if (pickup.latitude > destin.latitude && pickup.longitude > destin.longitude) {
              bounds = LatLngBounds(
                northeast: pickup,
                southwest: destin,
              );
            } else if (pickup.latitude < destin.latitude && pickup.longitude < destin.longitude) {
              bounds = LatLngBounds(
                northeast: destin,
                southwest: pickup,
              );
            } else if (pickup.latitude < destin.latitude && pickup.longitude < destin.longitude) {
              bounds = LatLngBounds(
                northeast: LatLng(destin.latitude, pickup.longitude),
                southwest: LatLng(pickup.latitude, destin.longitude),
              );
            } else {
              bounds = LatLngBounds(
                northeast: LatLng(pickup.latitude, destin.longitude),
                southwest: LatLng(destin.latitude, pickup.longitude),
              );
            }
            controller.animateCamera(
              CameraUpdate.newLatLngBounds(
                bounds,
                70,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            GreySeparator(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10.w),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: ShadowStatusIndicator(color: SwiftColors.orange)),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'En route pour prendre la commande',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Livraison en 30 minutes',
                        style: TextStyle(
                          color: SwiftColors.hintGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10.w),
                  IconButton(
                    iconSize: 35.w,
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 20.w,
                      backgroundColor: SwiftColors.orange,
                      child: Icon(Icons.phone, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class ShadowStatusIndicator extends StatefulWidget {
  const ShadowStatusIndicator({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  State<ShadowStatusIndicator> createState() => _ShadowStatusIndicatorState();
}

class _ShadowStatusIndicatorState extends State<ShadowStatusIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
      ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 60,
              width: 60,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return CustomPaint(
                    painter: WaterRipplePainter(_controller.value, count: 0, color: widget.color),
                  );
                },
              ),
            ),
          ),
          Center(
            child: Container(
              height: 11.h,
              width: 11.h,
              decoration: BoxDecoration(
                color: widget.color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: widget.color.withOpacity(0.12),
                    blurRadius: 1,
                    spreadRadius: 25,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WaterRipplePainter extends CustomPainter {
  final double progress;
  final int count;
  final Color color;

  Paint _paint = Paint()..style = PaintingStyle.fill;

  WaterRipplePainter(this.progress, {this.count = 3, this.color = const Color(0xFF0080ff)});

  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);

    for (int i = count; i >= 0; i--) {
      final double opacity = (1.0 - ((i + progress) / (count + 1)));
      final Color _color = color.withOpacity(opacity);
      _paint..color = _color;

      double _radius = radius * ((i + progress) / (count + 1));

      canvas.drawCircle(Offset(size.width / 2, size.height / 2), _radius, _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
