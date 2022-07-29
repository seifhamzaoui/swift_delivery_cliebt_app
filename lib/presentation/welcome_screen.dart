// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool showLogin = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (showLogin) {
          setState(() {
            showLogin = false;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: SwiftColors.purple,
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Transform.translate(
                    offset: Offset(0, -20),
                    child: Transform.scale(
                      scale: 1.1,
                      child: Container(
                        child: Image.asset(
                          'assets/images/eliptic_preview.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'LA MEILLEURE EXPERIENCE \n DE LIVRAISON',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'La méilleur éxpérience de livraison',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                PrimaryButton(
                  backColor: SwiftColors.orange,
                  onPressed: () {
                    setState(() {
                      showLogin = true;
                    });
                  },
                  text: 'Connectez-vous',
                  frontColor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  backColor: Colors.white,
                  onPressed: () {},
                  text: 'Continuez sans connexion',
                  frontColor: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'عربي',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/icons/earth.png'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            if (showLogin)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showLogin = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: showLogin ? MediaQuery.of(context).size.height * 0.8 : 0,
                child: Login(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
