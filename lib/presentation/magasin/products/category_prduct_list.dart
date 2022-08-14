// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:client_app/presentation/magasin/products/add_prduct_or_category/add_product_orcategory.dart';
import 'package:client_app/presentation/magasin/products/products_list.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryProductList extends StatelessWidget {
  const CategoryProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
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
                                Icons.arrow_back_ios_new,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                            Expanded(child: Image.asset('assets/images/logo_small.png')),
                            CustomIconButton(
                              icon: SvgPicture.asset('assets/icons/notification.svg'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: 61.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Burger',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontFamily: 'Montserrat-bold',
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: SwiftColors.orange,
                              radius: 27,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
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
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: CustomTextField(
                                hintText: 'Recherche',
                                fillColor: Colors.white,
                                icon: Icon(Icons.search),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                                flex: 3,
                                child: TextButton.icon(
                                    style: TextButton.styleFrom(
                                        backgroundColor: SwiftColors.purple,
                                        fixedSize: Size(50.w, 55.w)),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Ajouter',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: 'montserrat-bold',
                                        color: Colors.white,
                                      ),
                                    ))),
                          ],
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20.w,
                      crossAxisSpacing: 20.w,
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ProductItemInProductList();
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
