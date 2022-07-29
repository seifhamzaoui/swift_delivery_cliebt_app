import 'package:client_app/presentation/client/home/main_screen.dart';
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
      bottomNavigationBar: CustomBottomNavigationBar(
        onChangePage: changeIndex,
        indexChoosed: pageindex,
      ),
      body: IndexedStack(
        index: pageindex,
        children: [
          MainScreen(onReturnBack: changeIndex),
        ],
      ),
    );
  }
}
