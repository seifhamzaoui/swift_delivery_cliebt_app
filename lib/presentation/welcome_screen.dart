// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  bool showLogin = false;
  late AnimationController _controller;

  @override
  void initState() {
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
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Transform.translate(
                      offset: Offset(0, -20),
                      child: Transform.scale(
                        scale: 0.9,
                        child: Container(
                          child: Image.asset(
                            'assets/images/eleptic_preview_2.png',
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
                      fontFamily: 'future-friends',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'La méilleur éxpérience de livraison',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30.h),
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
                  SizedBox(
                    height: 20.h,
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
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 100),
                bottom: 0,
                left: 0,
                right: 0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  height: showLogin ? MediaQuery.of(context).size.height * 0.8 : 0,
                  child: Login(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaterRipplePainter extends CustomPainter {
  final double progress;
  final int count;
  final Color color;

  Paint _paint = Paint()..style = PaintingStyle.stroke;

  WaterRipplePainter(this.progress, {this.count = 3, this.color = const Color(0xFF0080ff)});

  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);

    for (int i = count; i >= 0; i--) {
      final double opacity = (1.0 - ((i + progress) / (count + 1)));
      final Color _color = color.withOpacity(opacity);
      _paint..color = _color;
      _paint.strokeWidth = 3;

      double _radius = radius * ((i + progress) / (count + 1));

      canvas.drawCircle(Offset(size.width / 2, size.height / 2), _radius, _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
