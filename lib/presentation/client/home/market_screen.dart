// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/client/Drawer/swift_drawer.dart';
import 'package:client_app/presentation/client/orders/food_screen.dart';
import 'package:client_app/presentation/client/reviews/magasin_reviews.dart';
import 'package:client_app/presentation/core/Custon_top_navigation_bar.dart';
import 'package:client_app/presentation/core/custom_navigation_bar.dart';
import 'package:client_app/presentation/core/food_pageView_element.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  bool showAddproduct = false;
  int productsNumber = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (showAddproduct) {
          setState(() {
            showAddproduct = false;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        drawer: SwiftDrawer(),
        bottomNavigationBar: !showAddproduct
            ? CustomBottomNavigationBar(
                onChangePage: (index) {
                  Navigator.of(context).pop(index);
                },
                indexChoosed: 0)
            : Container(
                height: 300.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1),
                    ],
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5.w))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// separator gris
                    SizedBox(height: 20.h),
                    const GreySeparator(),
                    SizedBox(height: 20.h),
                    // Combien?

                    Text('combien?',
                        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
                    SizedBox(height: 40.h),
                    // button d ajouter ou reduire nombre des produit

                    Container(
                      height: 80.h,
                      width: 220.w,
                      decoration: BoxDecoration(
                          color: Color(0xffE6E6E6), borderRadius: BorderRadius.circular(40.w)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundColor: productsNumber != 0 ? Colors.white : Color(0xffE6E6E6),
                            foregroundColor: Colors.black,
                            child: IconButton(
                              onPressed: productsNumber != 0
                                  ? () {
                                      setState(() {
                                        productsNumber--;
                                      });
                                    }
                                  : null,
                              icon: Icon(Icons.remove),
                            ),
                          ),
                          Text('$productsNumber',
                              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  productsNumber++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // button ajouter au panier et affichier le pris
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 20.w),
                        // button d ajouter au panier
                        Expanded(
                          flex: 3,
                          child: PrimaryButton(
                            backColor: Colors.black,
                            frontColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                showAddproduct = false;
                              });
                              // TODO : add to cart if productsNumber > 0 and panel opened
                            },
                            text: '400 DA                           +Ajouter au panier',
                          ),
                        ),
                        SizedBox(width: 20.w),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
        backgroundColor: SwiftColors.backGrey,
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTopNavigationBar(),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                            return MagasinReviewsPage();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60.w,
                              width: 60.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/denys.png'),
                                  ),
                                  borderRadius: BorderRadius.circular(30.w)),
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Denny\'s',
                                  style: TextStyle(color: SwiftColors.purple),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'Fast Food',
                                  style: TextStyle(color: SwiftColors.orange),
                                )
                              ],
                            ),
                            Spacer(),
                            CustomIconButton(
                                icon: SvgPicture.asset('assets/icons/favoris.svg'),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 12.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CardInfoElement(
                                  iconPath: 'assets/icons/hour.svg', title: '8:00-17:00'),
                              CardInfoElement(
                                  iconPath: 'assets/icons/agenda.svg', title: 'Tous les jours'),
                              CardInfoElement(iconPath: 'assets/icons/market.svg', title: 'ouvert'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/livraison_big.svg',
                                color: SwiftColors.purple,
                              ),
                              SizedBox(width: 15.w),
                              Text('Livraison', style: TextStyle(fontSize: 16.sp)),
                              Spacer(),
                              Text('200 DA', style: TextStyle(color: SwiftColors.orange)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      CustomTextField(
                        hintText: 'Trouvez votre repas….',
                        fillColor: Colors.white,
                        icon: Image.asset('assets/icons/search.png'),
                      ),
                      SizedBox(height: 20.h),
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
                            return SizedBox(width: 20.w);
                          },
                          itemCount: 4,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      SizedBox(
                        height: 250.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FoodScreen(),
                                  ));
                                },
                                child: FoodpageViewElement(
                                  image: AssetImage('assets/images/burger.png'),
                                  onPressed: () {
                                    setState(() {
                                      showAddproduct = true;
                                    });
                                  },
                                  time: 30,
                                  title: 'Burger',
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (contex, index) {
                            return SizedBox(
                              width: 20.w,
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
            if (showAddproduct)
              Container(
                height: MediaQuery.of(context).size.height * 1.2,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.7),
              )
          ],
        ),
      ),
    );
  }

  Column CardInfoElement({required String iconPath, required String title}) {
    return Column(
      children: [
        SvgPicture.asset(iconPath),
        SizedBox(height: 5.h),
        Text(
          title,
          style: TextStyle(fontSize: 12.sp),
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
          borderRadius: BorderRadius.circular(9.w),
          color: index == currentIndex ? SwiftColors.orange : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              color: index == currentIndex ? Colors.white : Colors.black,
              scale: 1.5.sp,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontSize: 14.sp, color: index == currentIndex ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
