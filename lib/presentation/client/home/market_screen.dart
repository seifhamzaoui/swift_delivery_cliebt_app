// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/orders/food_screen.dart';
import 'package:client_app/presentation/core/custom_navigation_bar.dart';
import 'package:client_app/presentation/core/food_pageView_element.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  void changIndex(int index) {
    setState(() {
      currenIndex = index;
    });
  }

  List<Map> imagesPaths = [
    {'url': 'assets/icons/menu_items/burger.png', 'title': 'Burger'},
    {'url': 'assets/icons/menu_items/tacos.png', 'title': 'Tacos'},
    {'url': 'assets/icons/menu_items/pizza.png', 'title': 'Pizza'},
    {'url': 'assets/icons/menu_items/boisson.png', 'title': 'Boisson'},
  ];
  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
          onChangePage: (index) {
            Navigator.of(context).pop(index);
          },
          indexChoosed: 0),
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Image.asset('assets/icons/menu.png'),
                      onPressed: () {},
                    ),
                    Expanded(child: Image.asset('assets/images/logo_small.png')),
                    CustomIconButton(
                      icon: Image.asset('assets/icons/notification.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/denys.png'),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Denny\'s',
                          style: TextStyle(color: SwiftColors.purple),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Fast Food',
                          style: TextStyle(color: SwiftColors.orange),
                        )
                      ],
                    ),
                    Spacer(),
                    CustomIconButton(
                        icon: Image.asset('assets/icons/favoris.png'), onPressed: () {}),
                  ],
                ),
                SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardInfoElement(iconPath: 'assets/icons/hour.png', title: '8:00-17:00'),
                        CardInfoElement(
                            iconPath: 'assets/icons/agenda.png', title: 'Tous les jours'),
                        CardInfoElement(iconPath: 'assets/icons/market.png', title: 'ouvert'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/livraison_big.png',
                          color: SwiftColors.purple,
                        ),
                        SizedBox(width: 15),
                        Text('Livraison', style: TextStyle(fontSize: 16)),
                        Spacer(),
                        Text('200 DA', style: TextStyle(color: SwiftColors.orange)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Trouvez votre repas….',
                  fillColor: Colors.white,
                  icon: Image.asset('assets/icons/search.png'),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MarketItem(
                        imagePath: imagesPaths[index]['url'],
                        onPressed: changIndex,
                        index: index,
                        currentIndex: currenIndex,
                        title: imagesPaths[index]['title'],
                      );
                    },
                    separatorBuilder: (contextn, index) {
                      return SizedBox(width: 20);
                    },
                    itemCount: 4,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: Alignment.centerLeft,
                        child: FoodpageViewElement(
                          image: AssetImage('assets/images/burger.png'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FoodScreen(),
                            ));
                          },
                          time: 30,
                          title: 'Burger',
                        ),
                      );
                    },
                    separatorBuilder: (contex, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column CardInfoElement({required String iconPath, required String title}) {
    return Column(
      children: [
        Image.asset(iconPath),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class MarketItem extends StatelessWidget {
  final String imagePath;

  final void Function(int index) onPressed;
  final int index;
  final int currentIndex;

  final String title;
  const MarketItem({
    Key? key,
    required this.imagePath,
    required this.onPressed,
    required this.index,
    required this.currentIndex,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: index == currentIndex ? SwiftColors.orange : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              color: index == currentIndex ? Colors.white : Colors.black,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(color: index == currentIndex ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
