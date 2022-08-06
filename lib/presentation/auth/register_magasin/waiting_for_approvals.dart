// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';

class WaitingForApprovals extends StatelessWidget {
  const WaitingForApprovals({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        return false;
      }),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'UNE DERNIERE ETAPE...',
                      style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                    ),
                    const SizedBox(height: 107),
                    Text(
                      'Merci pour votre inscription!',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Votre informations sont en cours \nd\'examen. Vous serez averti \nlorsque votre compte sera activé',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 95),
                    Image.asset('assets/icons/drawer/purple_circle.png'),
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
