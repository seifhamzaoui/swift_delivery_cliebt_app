// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/auth/phone_confirmation.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/auth/register_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.purple,
      body: SafeArea(
        child: Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 43, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(alignment: Alignment.center, child: GreySeparator()),
                  SizedBox(height: 20),
                  Text('INSCRIVEZ-VOUS',
                      style: TextStyle(
                        fontSize: 24,
                        color: SwiftColors.purple,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Créez un nouveau compte d\'utilisateur',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Nom et prenom*',
                    style: TextStyle(color: Color(0xff4D0060), fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hintText: 'Nom',
                          icon: Image.asset('assets/icons/person.png'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CustomTextField(
                          hintText: 'Prénom',
                          icon: Image.asset('assets/icons/person.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Hero(
                      tag: 'username',
                      child: Material(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nom d\'utilisateur*',
                              style: TextStyle(color: Color(0xff4D0060), fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              hintText: 'Insérez votre nom d\'utilisateur',
                              icon: Image.asset('assets/icons/person.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )),
                  Text(
                    'Numéro du Téléphone*',
                    style: TextStyle(color: Color(0xff4D0060), fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Insérez votre téléphone',
                    icon: Image.asset('assets/icons/phone.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Hero(
                      tag: 'password',
                      child: Material(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mot de passe*',
                              style: TextStyle(color: Color(0xff4D0060), fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              obscureText: true,
                              hintText: 'Insérez votre mot de passe',
                              icon: Image.asset('assets/icons/lock.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    backColor: SwiftColors.purple,
                    frontColor: Colors.white,
                    onPressed: () {
                      BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.validateinfo());
                    },
                    text: 'Inscrivez-vous',
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Vous avez déjà un compte?',
                        style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Connectez-Vous',
                          style: TextStyle(color: SwiftColors.purple, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
