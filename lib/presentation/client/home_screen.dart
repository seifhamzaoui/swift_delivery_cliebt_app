import 'package:client_app/presentation/client/Drawer/swift_drawer.dart';
import 'package:client_app/presentation/client/home/favorite_screen.dart';
import 'package:client_app/presentation/client/home/main_screen.dart';
import 'package:client_app/presentation/client/home/panier.dart';
import 'package:client_app/presentation/client/home/settings/settings.dart';
import 'package:client_app/presentation/client/orders/orders_screen.dart';
import 'package:client_app/presentation/core/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void changeIndex(int index) {
    setState(() {
      pageindex = index;
    });
  }

  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SwiftDrawer(),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   onChangePage: changeIndex,
      //   indexChoosed: pageindex,
      // ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            IndexedStack(
              index: pageindex,
              children: [
                MainScreen(onReturnBack: changeIndex),
                OrdersScreen(),
                Panier(),
                FavoriteScreen(),
                Settings()
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  child: CustomBottomNavigationBar(
                    onChangePage: changeIndex,
                    indexChoosed: pageindex,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
