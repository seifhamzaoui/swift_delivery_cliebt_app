// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/core/rectangle_text_field.dart';
import 'package:client_app/presentation/error/gps_required.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneConfirmation extends StatefulWidget {
  const PhoneConfirmation({Key? key}) : super(key: key);

  @override
  State<PhoneConfirmation> createState() => _PhoneConfirmationState();
}

class _PhoneConfirmationState extends State<PhoneConfirmation> with SingleTickerProviderStateMixin {
  final List<FocusNode> focusNodes = List.generate(
    5,
    (index) => FocusNode(
      debugLabel: index.toString(),
    ),
  );
  late AnimationController _controller;

  @override
  void initState() {
    focusNodes[0].requestFocus();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
      ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
        return false;
      },
      child: Scaffold(
        backgroundColor: SwiftColors.purple,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
                top: 0,
                left: -MediaQuery.of(context).size.width / 4,
                child: Transform.scale(
                  scale: 1.3,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 1.5,
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return CustomPaint(
                          painter: WaterRipplePainter(
                            _controller.value,
                            count: 6,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                  ),
                )),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Transform.translate(
                    offset: Offset(0, -20),
                    child: Transform.scale(
                      scale: 1.11,
                      child: Image.asset(
                        'assets/images/eleptic_preview_2.png',
                        fit: BoxFit.fill,
                        color: Colors.black.withOpacity(0.7),
                        colorBlendMode: BlendMode.darken,
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
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 43, vertical: 20),
                height: MediaQuery.of(context).size.height * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(alignment: Alignment.center, child: GreySeparator()),
                      SizedBox(height: 20),
                      Text(
                        'UNE DERNIERE ETAPE..',
                        style: TextStyle(
                            fontFamily: 'future-friends',
                            color: SwiftColors.purple,
                            fontSize: 22.sp),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '''merci de saisir le code composé de 5 chiffres \ndans les cases ci-dessous pour confirmer \nvotre numéro du téléphone ''',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      Text(
                        '0665 78 87 73',
                        style: TextStyle(
                          color: SwiftColors.orange,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Code de confirmation*',
                        style: TextStyle(color: SwiftColors.purple, fontSize: 16.sp),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: List.generate(
                            5,
                            (index) => Expanded(
                                  child: RectangleTextField(
                                    focusNode: focusNodes[index],
                                    onChanged: (val) {
                                      if (val.length == 1 && index + 1 <= 4) {
                                        focusNodes[index].unfocus();
                                        focusNodes[index + 1].requestFocus();
                                      }
                                    },
                                  ),
                                )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Renvoyer le code',
                              style: TextStyle(color: SwiftColors.purple),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {
                          BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.validatePhone());
                        },
                        text: 'Valider',
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
                          },
                          child: Text(
                            'Changez le numéro du Téléphone',
                            style: TextStyle(color: SwiftColors.purple),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
