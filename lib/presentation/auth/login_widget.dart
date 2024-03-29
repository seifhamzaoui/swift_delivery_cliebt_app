// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/forgot_password/phone_confirmation.dart';
import 'package:client_app/presentation/auth/indexed_Register_screen.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/auth/register_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              SizedBox(height: 20.h),
              Text('CONNECTEZ-VOUS',
                  style: TextStyle(
                      fontSize: 24.sp, color: SwiftColors.purple, fontFamily: 'future-friends')),
              SizedBox(
                height: 10,
              ),
              Text(
                'Connectez-vous pour voir vos magasins\npréférés',
              ),
              SizedBox(
                height: 40.h,
              ),
              Hero(
                tag: 'username',
                child: Material(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nom d\'utilisateur*',
                        style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        hintText: 'Insérez votre nom d\'utilisateur',
                        icon: SvgPicture.asset('assets/icons/person.svg'),
                      ),
                      SizedBox(
                        height: 20.h,
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
                          style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          obscureText: true,
                          hintText: 'Insérez votre mot de passe',
                          icon: SvgPicture.asset('assets/icons/lock.svg'),
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
                  Text(
                    'Souvenez de moi',
                    style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13.sp),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                        context,
                      ) {
                        return ForgotPasswordPhoneConfirmation();
                      }));
                    },
                    child: Text(
                      'Mot de passe oublié',
                      style: TextStyle(color: SwiftColors.orange, fontSize: 13.sp),
                    ),
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
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Vous n\'avez pas de compte?',
                    style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return IndexedRegisterPage();
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
                    child: Text(
                      'Inscrivez-vous',
                      style: TextStyle(color: SwiftColors.orange, fontSize: 13.sp),
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
      width: 96.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFE6E6E6),
      ),
    );
  }
}
