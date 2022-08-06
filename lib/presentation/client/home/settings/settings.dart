// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'dart:math';

import 'package:client_app/presentation/client/Drawer/swift_drawer.dart';
import 'package:client_app/presentation/client/home/settings/change_magsin_name.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/client/home/settings/change_password.dart';
import 'package:client_app/presentation/client/home/settings/change_phone_number.dart';
import 'package:client_app/presentation/client/home/settings/change_username.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool showUserFields = false;
  bool showMagasinFields = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopNavigationBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleProfilePhoto(
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hamza',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: SwiftColors.purple,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Bendahmane',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w100,
                        color: SwiftColors.hintGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 54),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: SwiftColors.orange.withOpacity(0.14),
                  child: Icon(
                    Icons.person_rounded,
                    color: SwiftColors.orange,
                    size: 28,
                  ),
                ),
                Text(
                  'Paramètres du \nProfil',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Transform.rotate(
                  angle: showUserFields ? pi / 2 : 0,
                  child: CustomIconButton(
                    backColor: Color(0xffF4F0F6),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: SwiftColors.hintGreyColor,
                    ),
                    onPressed: () {
                      setState(() {
                        showUserFields = !showUserFields;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            if (showUserFields) ...[
              SettingsPageItem(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return ChangeUsername();
                  })));
                },
                title: 'Nom d\'Utilisateur',
                value: 'Hamza_b',
              ),
              const SizedBox(height: 20),
              SettingsPageItem(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return ChangePhoneNumber();
                  })));
                },
                title: 'Numéro du Téléphone',
                value: '0665******',
              ),
              const SizedBox(height: 20),
              SettingsPageItem(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return ChangePassword();
                  })));
                },
                title: 'Mot de passe',
                value: '***************',
              )
            ],
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: SwiftColors.blue.withOpacity(0.14),
                  child: Image.asset(
                    'assets/icons/market.png',
                    scale: 0.8,
                    color: SwiftColors.blue,
                  ),
                ),
                Text(
                  'Paramètres du \nMagasin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Transform.rotate(
                  angle: showMagasinFields ? pi / 2 : 0,
                  child: CustomIconButton(
                    backColor: Color(0xffF4F0F6),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: SwiftColors.hintGreyColor,
                    ),
                    onPressed: () {
                      setState(() {
                        showMagasinFields = !showMagasinFields;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (showMagasinFields) ...[
              SettingsPageItem(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return ChangeMagasinName();
                  })));
                },
                title: 'Nom du magasin',
                value: 'Denny\'s',
                textColor: SwiftColors.blue,
              ),
              const SizedBox(height: 20),
              SettingsPageItem(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return ChangePhoneNumber();
                  })));
                },
                title: 'Type de Magasin',
                value: 'Fast Food',
                textColor: SwiftColors.blue,
              ),
              const SizedBox(height: 20),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF4F0F6),
                ),
                onPressed: () {},
                icon: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(pi),
                  child: const Icon(
                    Icons.logout,
                    color: SwiftColors.orange,
                  ),
                ),
                label: Text(
                  'Déconnexion',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class SettingsPageItem extends StatelessWidget {
  const SettingsPageItem({
    Key? key,
    required this.title,
    required this.value,
    required this.onPressed,
    this.textColor,
  }) : super(key: key);
  final String title;
  final String value;
  final Function onPressed;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w100,
                  color: textColor ?? SwiftColors.orange,
                ),
              ),
            ],
          ),
          CustomIconButton(
            backColor: Color(0xffF4F0F6),
            icon: Icon(
              Icons.arrow_forward_ios,
              color: SwiftColors.hintGreyColor,
              size: 20,
            ),
            onPressed: () {
              onPressed();
            },
          ),
        ],
      ),
    );
  }
}

class CircleProfilePhoto extends StatelessWidget {
  const CircleProfilePhoto({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: 114,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffF4F0F6),
            radius: 57,
            child: Icon(
              Icons.person_rounded,
              size: 110,
              color: Color(0xff707070),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                onPressed();
              },
              child: Image.asset('assets/icons/add_photo.png'),
            ),
          )
        ],
      ),
    );
  }
}
