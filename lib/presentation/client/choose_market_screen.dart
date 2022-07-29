// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/home_screen.dart';
import 'package:client_app/presentation/client/home/main_screen.dart';
import 'package:client_app/presentation/core/market_grid_element.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';

List<Map> iconsPath = [
  {
    'url': 'assets/icons/markets/restaurant.png',
    'title': 'Restaurants',
  },
  {
    'url': 'assets/icons/markets/fruits.png',
    'title': 'Fruits & \nLégumes',
  },
  {
    'url': 'assets/icons/markets/alimentation.png',
    'title': 'Allimentation\nGénérale',
  },
  {
    'url': 'assets/icons/markets/boucherie.png',
    'title': 'Boucherie &\nPoissonerie',
  },
  {
    'url': 'assets/icons/markets/informatique.png',
    'title': 'Matériel \nInformatique',
  },
  {
    'url': 'assets/icons/markets/cosmetique.png',
    'title': 'Cosmétiques',
  },
  {
    'url': 'assets/icons/markets/patisserie.png',
    'title': 'Pâtisserie\n& crêperie',
  },
  {
    'url': 'assets/icons/markets/colis.png',
    'title': 'Livraison de Votre\nColis',
  },
];

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
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              const SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CHOISISSEZ LE PRODUIT\nQUE VOUS VOULEZ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: SwiftColors.purple),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 0,
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return MarketGridElement(
                      iconPath: iconsPath[index]['url'],
                      title: iconsPath[index]['title'],
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
