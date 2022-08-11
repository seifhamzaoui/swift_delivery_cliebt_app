// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/home_screen.dart';
import 'package:client_app/presentation/client/home/main_screen.dart';
import 'package:client_app/presentation/constants/data.dart';
import 'package:client_app/presentation/core/market_grid_element.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosemarketScreen extends StatelessWidget {
  const ChoosemarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 30.h)),
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CHOISISSEZ LE PRODUIT\nQUE VOUS VOULEZ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'future-friends', fontSize: 24.sp, color: SwiftColors.purple),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20.h)),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 0,
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MarketGridElement(
                      iconPath: magasinCategories[index].imagepath,
                      title: magasinCategories[index].title,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
                            },
                          ),
                        );
                      },
                    );
                  },
                  childCount: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
