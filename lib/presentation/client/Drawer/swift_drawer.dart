// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/Drawer/devenir_livreur.dart';
import 'package:client_app/presentation/client/Drawer/info_page.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';

class SwiftDrawer extends StatelessWidget {
  const SwiftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: SwiftColors.purple,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Row(
                children: [
                  CustomIconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    backColor: SwiftColors.lightPurple,
                    onPressed: () {
                      Scaffold.of(context).closeDrawer();
                    },
                  ),
                  Spacer(),
                  Expanded(
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Spacer(),
                  SizedBox(width: 30)
                ],
              ),
              SizedBox(height: 50),
              DrawerMenuItem(
                icon: Image.asset('assets/icons/drawer/livraison.png'),
                title: 'Devenir un livreur',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: ((context) => DevenirLivreur())));
                },
              ),
              const SizedBox(height: 23),
              DrawerMenuItem(
                icon: Image.asset('assets/icons/drawer/info.png'),
                title: 'Informations sur l\'Application',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => InfoPage())));
                },
              ),
              const SizedBox(height: 23),
              DrawerMenuItem(
                icon: Image.asset('assets/icons/drawer/star.png'),
                title: 'Evaluer l\'Application',
                onPressed: () {},
              ),
              const SizedBox(height: 23),
              DrawerMenuItem(
                icon: Image.asset('assets/icons/drawer/Call Center.png'),
                title: 'Signaler un probleme',
                onPressed: () {},
              ),
              const SizedBox(height: 23),
              DrawerMenuItem(
                icon: Image.asset('assets/icons/drawer/earrth.png'),
                title: 'Français',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Widget icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: SwiftColors.lightPurple,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Row(
            children: [
              icon,
              SizedBox(width: 22),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
