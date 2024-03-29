// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/home_screen.dart';
import 'package:client_app/presentation/client/home/main_screen.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/market_grid_element.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: CustomTopNavigationBar()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return FavoriteGridItem();
                },
                childCount: 8,
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 120))
          ],
        ),
      ),
    );
  }
}

class FavoriteGridItem extends StatelessWidget {
  const FavoriteGridItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/denys.png'),
          )),
      child: Stack(
        children: [
          Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.3), Colors.black],
              ),
            ),
          ),
          Positioned(
              top: 17,
              left: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/yellow_star.svg'),
                  SizedBox(width: 5),
                  Text(
                    '4.3',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          Positioned(
            right: 17,
            top: 17,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 13,
                backgroundColor: SwiftColors.orange,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 17,
            left: 17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Denny\'s ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Fast Food',
                  style: TextStyle(
                    fontSize: 11,
                    color: SwiftColors.hintGreyColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
