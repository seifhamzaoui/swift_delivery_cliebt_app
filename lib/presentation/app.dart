import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/splash.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
