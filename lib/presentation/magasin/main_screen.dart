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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MagasinMainScreen extends StatelessWidget {
  const MagasinMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SwiftDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTopNavigationBar(),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bonjour',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp,
                          ),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'Hamza',
                          style: TextStyle(
                            color: SwiftColors.purple,
                            fontFamily: 'Montserrat-semi-bold',
                            fontSize: 30.sp,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 45.w,
                      width: 45.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/denys.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    // titre et type de magasin
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Denny\'s',
                          style: TextStyle(fontSize: 14.sp, color: SwiftColors.purple),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Fast Food',
                          style: TextStyle(fontSize: 14.sp, color: SwiftColors.orange),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Text('Informations',
                    style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 35.h),
                Row(
                  children: [
                    Expanded(
                      child: InformationsContainer(
                        color: SwiftColors.orange,
                        title: 'Commandes\nComplété',
                        value: '5',
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Expanded(
                      child: InformationsContainer(
                        color: SwiftColors.blue,
                        title: 'Commandes\nen attente',
                        value: '7',
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25.h),
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
                SizedBox(height: 40.h),
                Text('Paramètres du compte',
                    style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 40.h),
                Container(
                  height: 360.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Expanded(
                              child: ParametereContainer(
                            icon: SvgPicture.asset(
                              'assets/icons/commande.svg',
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                return OrdersPage();
                              })));
                            },
                            title: 'Liste des\nCommandes',
                          )),
                          SizedBox(height: 30.h),
                          Expanded(
                              child: ParametereContainer(
                            icon: SvgPicture.asset(
                              'assets/icons/product_list.svg',
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                return ProductsList();
                              })));
                            },
                            title: 'Liste des \nProduits',
                          )),
                        ],
                      ),
                      SizedBox(width: 25.w),
                      Column(
                        children: [
                          Expanded(
                            child: ParametereContainer(
                              icon: SvgPicture.asset(
                                'assets/icons/settings.svg',
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                  return Settings(
                                    isMagasin: true,
                                  );
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
                SizedBox(height: 20.h),
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
          borderRadius: BorderRadius.circular(15.w),
          color: SwiftColors.purple,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, top: 21.h, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
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
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.w),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.sp,
                )),
            Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontFamily: 'Montserrat-semi-bold',
                )),
          ],
        ),
      ),
    );
  }
}
