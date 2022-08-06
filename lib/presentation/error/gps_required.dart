import 'package:client_app/application/location/location_bloc.dart';
import 'package:client_app/presentation/client/choose_market_screen.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GpsRequired extends StatelessWidget {
  const GpsRequired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'GPS REQUIS!',
                  style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                ),
                Text(
                  'le GPS nous permet de calculer \nles tarifs de livraison par rapport à \nvotre emplacement',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                Align(alignment: Alignment.center, child: Image.asset('assets/images/gps.png')),
                Text(
                  'ACTIVEZ VOTRE GPS \nS\'IL VOUS PLAIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                ),
                PrimaryButton(
                  backColor: SwiftColors.purple,
                  frontColor: Colors.white,
                  onPressed: () {
                    BlocProvider.of<LocationBloc>(context).add(const LocationEvent.started());
                  },
                  text: 'Continuer',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
