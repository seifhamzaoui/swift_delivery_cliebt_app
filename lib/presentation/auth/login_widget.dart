// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/auth/register_page.dart';
import 'package:client_app/presentation/constants/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 43, vertical: 20),
      height: MediaQuery.of(context).size.height * 0.8,
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center, child: GreySeparator()),
              SizedBox(height: 20),
              Text('CONNECTEZ-VOUS', style: TextStyle(fontSize: 24, color: SwiftColors.purple)),
              SizedBox(
                height: 10,
              ),
              Text(
                'Connectez-vous pour voir vos magasins\npréférés',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 40,
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
                ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                      value: false,
                      onChanged: (val) {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: const BorderSide(
                          color: SwiftColors.hintGreyColor,
                          width: 0,
                        ),
                      )),
                  const Text(
                    'Souvenez de moi',
                    style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13),
                  ),
                  Spacer(),
                  const Text(
                    'Mot de passe oublié',
                    style: TextStyle(color: SwiftColors.orange, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(
                backColor: SwiftColors.purple,
                frontColor: Colors.white,
                onPressed: () {},
                text: 'Connectez-vous',
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Vous n\'avez pas de compte?',
                    style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return RegisterPage();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return Material(
                            color: SwiftColors.purple,
                            child: Stack(
                              alignment: Alignment.topCenter,
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
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height *
                                          (animation.value * 0.2 + 0.8),
                                      child: child,
                                    )),
                              ],
                            ),
                          );
                          ;
                        },
                      ));
                    },
                    child: const Text(
                      'Inscrivez-vous',
                      style: TextStyle(color: SwiftColors.orange, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GreySeparator extends StatelessWidget {
  const GreySeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFE6E6E6),
      ),
    );
  }
}
