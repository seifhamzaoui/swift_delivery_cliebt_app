import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  String text =
      'Ea incididunt ullamco nisi in nostrud deserunt cillum consectetur sit consectetur ad. Amet cillum voluptate reprehenderit laborum eu laborum dolor nostrud duis incididunt amet qui dolor. Adipisicing id excepteur proident est ad sit tempor Lorem deserunt nisi pariatur ut veniam aute. Nisi dolore tempor non nulla est. Incididunt id tempor do ullamco exercitation est esse mollit. Ad Lorem aute dolore anim aute non aliqua eiusmod magna ex aliqua fugiat dolore. Ex sunt proident cupidatat ex.';
  bool showText = false;
  int productsNumber = 0;
  bool showAllPanel = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (showAllPanel) {
          setState(() {
            showAllPanel = false;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: showAllPanel ? 300.h : 90.h,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                const BoxShadow(color: Colors.black, blurRadius: 2, spreadRadius: 0),
              ],
              borderRadius: !showAllPanel ? null : BorderRadius.vertical(top: Radius.circular(5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// separator gris
              if (showAllPanel) SizedBox(height: 20.h),
              if (showAllPanel) const GreySeparator(),
              if (showAllPanel) SizedBox(height: 20.h),
              // Combien?
              if (showAllPanel)
                Text('Combien?', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
              if (showAllPanel) SizedBox(height: 40.h),
              // button d ajouter ou reduire nombre des produit
              if (showAllPanel)
                Container(
                  height: 80.h,
                  width: 220.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE6E6E6), borderRadius: BorderRadius.circular(40.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        maxRadius: 35.sp,
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
                        maxRadius: 35.sp,
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
              Spacer(),
              // button ajouter au panier et affichier le pris
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20.w),
                  //affichage de prix
                  if (!showAllPanel)
                    Expanded(
                        flex: 1,
                        child: Text('400 da',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: SwiftColors.orange,
                            ))),
                  if (!showAllPanel) const Spacer(flex: 1),
                  // button d ajouter au panier
                  if (showAllPanel)
                    Expanded(
                      child: PrimaryButton(
                        backColor: Colors.black,
                        frontColor: Colors.white,
                        onPressed: () {
                          // TODO : add to cart if productsNumber > 0 and panel opened
                        },
                        text: '400 DA                           +Ajouter au panier',
                      ),
                    )
                  else
                    Expanded(
                      flex: 3,
                      child: PrimaryButton(
                        backColor: Colors.black,
                        frontColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            showAllPanel = true;
                          });
                          // TODO : add to cart if productsNumber > 0 and panel opened
                        },
                        text: '+Ajouter au panier',
                      ),
                    ),
                  SizedBox(width: 20.w),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width,
                    // photo de produit dans decoration
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/burger.png'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        // bouton de retour
                        Positioned(
                          top: 30,
                          left: 30,
                          child: CustomIconButton(
                            icon: Center(
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  // information de produit
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chicken Burger',
                              style: TextStyle(fontSize: 22.sp),
                            ),
                            SizedBox(height: 5.h),
                            Text('Livraison en 30 min',
                                style:
                                    TextStyle(fontSize: 14.sp, color: SwiftColors.hintGreyColor)),
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RatingBar.builder(
                                  itemSize: 26.sp,
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ignoreGestures: true,
                                  itemBuilder: (context, _) => Image.asset(
                                    'assets/icons/yellow_star.png',
                                    color: SwiftColors.orange,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const SizedBox(width: 5),
                                Text('4', style: TextStyle(fontSize: 18.sp))
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        //photo de magasin
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
                  ),
                  SizedBox(height: 20.h),
                  // description de produit
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Text(
                              showText
                                  ? text
                                  : text.replaceRange((text.length / 10).floor(), text.length, ''),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(width: 5.w),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showText = !showText;
                                  });
                                },
                                child: Text(
                                  'affichier plus',
                                  style: TextStyle(fontSize: 14.sp, color: SwiftColors.orange),
                                )),
                          ],
                        ),
                      )),
                  SizedBox(height: 50.h)
                ],
              ),
            ),
            if (showAllPanel)
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
}
