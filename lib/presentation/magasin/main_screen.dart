// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/home/settings/settings.dart';
import 'package:client_app/presentation/magasin/orders/orders_page.dart';
import 'package:client_app/presentation/magasin/products/products_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/client/Drawer/swift_drawer.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';

class MagasinMainScreen extends StatelessWidget {
  const MagasinMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SwiftDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTopNavigationBar(),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        const Text(
                          'Bonjour',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Hamza',
                          style: TextStyle(
                            color: SwiftColors.purple,
                            fontFamily: 'Montserrat-semi-bold',
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/denys.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10),
                    // titre et type de magasin
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        const Text(
                          'Denny\'s',
                          style: TextStyle(color: SwiftColors.purple),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          'Fast Food',
                          style: TextStyle(color: SwiftColors.orange),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text('Informations', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                const SizedBox(height: 35),
                Row(
                  children: [
                    Expanded(
                      child: InformationsContainer(
                        color: SwiftColors.orange,
                        title: 'Commandes\nComplété',
                        value: '5',
                      ),
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                      child: InformationsContainer(
                        color: SwiftColors.blue,
                        title: 'Commandes\nen attente',
                        value: '7',
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: InformationsContainer(
                        color: SwiftColors.lightblue,
                        title: 'Produits\najoutées',
                        value: '12',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text('Paramètres du compte',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),
                Container(
                  height: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Expanded(
                              child: ParametereContainer(
                            icon: Image.asset('assets/icons/shooping_bag.png'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                return OrdersPage();
                              })));
                            },
                            title: 'Liste des\nCommandes',
                          )),
                          const SizedBox(height: 30),
                          Expanded(
                              child: ParametereContainer(
                            icon: Image.asset('assets/icons/product_list.png'),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                return ProductsList();
                              })));
                            },
                            title: 'Liste des \nProduits',
                          )),
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        children: [
                          Expanded(
                            child: ParametereContainer(
                              icon: Image.asset(
                                'assets/icons/settings.png',
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                  return Settings();
                                })));
                              },
                              title: 'Paramètres',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ParametereContainer extends StatelessWidget {
  const ParametereContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final Widget icon;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: SwiftColors.purple,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 21, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Montserrat-semi-bold',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformationsContainer extends StatelessWidget {
  const InformationsContainer({
    Key? key,
    required this.color,
    required this.title,
    required this.value,
  }) : super(key: key);
  final Color color;
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                )),
            Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Montserrat-semi-bold',
                )),
          ],
        ),
      ),
    );
  }
}
