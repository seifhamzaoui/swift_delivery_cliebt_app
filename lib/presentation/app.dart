import 'package:client_app/application/location/location_bloc.dart';
import 'package:client_app/injectable.dart';
import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/Drawer/swift_drawer.dart';
import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/magasin/main_screen.dart';
import 'package:client_app/presentation/splash.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      create: (context) => getIt<LocationBloc>()..add(const LocationEvent.started()),
      child: ScreenUtilInit(
          designSize: Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('fr', 'FR'),
                Locale('ar', 'AE'),
              ],
              locale: Locale('fr', ''),
              theme: ThemeData(
                fontFamily: 'Montserrat',
                textTheme: TextTheme(
                  button: TextStyle(fontSize: 14.sp),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: Scaffold(drawer: SwiftDrawer(), body: WelcomeScreen()), //
            );
          }),
    );
  }
}
