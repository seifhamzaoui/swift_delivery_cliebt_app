// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/application/location/location_bloc.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MagasinMapLocalisation extends StatefulWidget {
  const MagasinMapLocalisation({Key? key}) : super(key: key);

  @override
  State<MagasinMapLocalisation> createState() => _MagasinMapLocalisationState();
}

class _MagasinMapLocalisationState extends State<MagasinMapLocalisation> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
        return false;
      }),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'LOCALISATION DU VOTRE MAGASIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                      ),
                    ),
                    Container(
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: BlocConsumer<LocationBloc, LocationState>(
                        listener: (c, state) {},
                        builder: (context, state) {
                          return GoogleMap(
                            markers: markers,
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            myLocationButtonEnabled: true,
                            myLocationEnabled: true,
                            onMapCreated: (GoogleMapController controller) {
                              mapController = controller;
                              context.read<LocationBloc>().state.maybeMap(
                                    orElse: () {},
                                    positionlocated: (s) async {
                                      mapController.animateCamera(CameraUpdate.newCameraPosition(
                                          CameraPosition(target: s.adress.position, zoom: 14)));
                                      // markers.add(Marker(
                                      //   markerId: MarkerId('marker'),
                                      //   position: s.adress.position,
                                      // ));
                                    },
                                  );
                            },
                            onLongPress: (latlng) {
                              setState(() {
                                markers = {};
                                markers.add(Marker(
                                  markerId: MarkerId('${latlng.latitude}${latlng.longitude}'),
                                  position: latlng,
                                  draggable: true,
                                ));
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {
                          if (markers.isNotEmpty) {
                            BlocProvider.of<RegisterBloc>(context).add(
                                RegisterEvent.setMagasinlocation(postion: markers.first.position));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Veuillez choisir une position')));
                          }
                        },
                        text: 'Continuer',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
