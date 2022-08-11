// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/forgot_password/forgot_password_congratulation.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/rectangle_text_field.dart';
import 'package:client_app/presentation/error/gps_required.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordLastStep extends StatefulWidget {
  const ForgotPasswordLastStep({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordLastStep> createState() => _ForgotPasswordLastStepState();
}

class _ForgotPasswordLastStepState extends State<ForgotPasswordLastStep> {
  final List<FocusNode> focusNodes = List.generate(
    5,
    (index) => FocusNode(
      debugLabel: index.toString(),
    ),
  );

  @override
  void initState() {
    focusNodes[0].requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.purple,
      body: Stack(
        fit: StackFit.expand,
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
                        color: Colors.black.withOpacity(0.7),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.w),
                  topRight: Radius.circular(30.w),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 43.w, vertical: 20),
              height: MediaQuery.of(context).size.height * 0.55,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(alignment: Alignment.center, child: GreySeparator()),
                    SizedBox(height: 20),
                    Text(
                      'UNE DERNIERE ETAPE..',
                      style: TextStyle(
                          fontFamily: 'future-friends', color: SwiftColors.purple, fontSize: 22.sp),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Veuillez saisir votre nouvel mot de passe',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Nouveau mot de passe*',
                      style: TextStyle(color: SwiftColors.purple, fontSize: 16.sp),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(hintText: 'Le nouveaux mot de passe'),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PrimaryButton(
                      backColor: SwiftColors.purple,
                      frontColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                            return ForgotpasswordCongratulations();
                          }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return AnimatedContainer(
                              curve: Curves.linear,
                              height: animation.value == 1 ? MediaQuery.of(context).size.height : 0,
                              duration: Duration(milliseconds: 100),
                              child: child,
                            );
                          }),
                        );
                      },
                      text: 'Valider',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
