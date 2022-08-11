// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:client_app/presentation/magasin/products/add_prduct_or_category/add_product_orcategory.dart';
import 'package:client_app/presentation/magasin/products/category_prduct_list.dart';
import 'package:client_app/presentation/magasin/products/single_product_preview.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            Expanded(child: Image.asset('assets/images/logo_small.png')),
                            CustomIconButton(
                              icon: Image.asset('assets/icons/notification.png'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: 61.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Liste des \nProduits',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'Montserrat-bold',
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: SwiftColors.purple,
                              radius: 27,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                    // TODO : add the add product or category screen
                                    return AddProductorCategory();
                                  })));
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        CustomTextField(
                          hintText: 'Recherche',
                          fillColor: Colors.white,
                          icon: Icon(Icons.search),
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return CategoryProductListItem(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              // TODO : add the add product or category screen
                              return CategoryProductList();
                            })));
                          },
                        );
                      },
                      childCount: 8,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  )
                ],
              ))),
    );
  }
}

class CategoryProductListItem extends StatelessWidget {
  const CategoryProductListItem({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 162.w,
        width: 162.w,
        decoration: BoxDecoration(
          color: SwiftColors.orange,
          borderRadius: BorderRadius.circular(10.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/menu_items/burger.png',
              scale: 0.7.sp,
            ),
            SizedBox(height: 17.h),
            Text(
              'burger',
              style: TextStyle(color: Colors.white, fontFamily: 'Montserrat-bold', fontSize: 18.sp),
            )
          ],
        ),
      ),
    );
  }
}

class ProductItemInProductList extends StatelessWidget {
  const ProductItemInProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          // TODO : add the add product or category screen
          return SingleProductPreview();
        })));
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/images/burger.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0),
                      Colors.black,
                    ],
                  ),
                ),
              );
            }),
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                height: 30.h,
                width: 110.w,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text(
                      'Epuisé',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13.sp,
                          fontFamily: 'montserrat-bold'),
                    ),
                    Checkbox(
                      fillColor: MaterialStateProperty.all(SwiftColors.orange),
                      value: true,
                      onChanged: (val) {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: const BorderSide(
                          color: SwiftColors.hintGreyColor,
                          width: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              bottom: 19,
              child: Text(
                'Cheken burger',
                style: TextStyle(
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 14.sp,
                    fontFamily: 'montserrat-bold'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
