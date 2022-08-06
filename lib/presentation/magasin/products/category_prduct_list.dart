// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:client_app/presentation/magasin/products/add_prduct_or_category/add_product_orcategory.dart';
import 'package:client_app/presentation/magasin/products/products_list.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';

class CategoryProductList extends StatelessWidget {
  const CategoryProductList({Key? key}) : super(key: key);

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
                        const SizedBox(height: 61),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Burger',
                              style: TextStyle(
                                fontSize: 30,
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
                            const SizedBox(width: 10),
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
                        const SizedBox(height: 20),
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
                            Expanded(
                                flex: 3,
                                child: TextButton.icon(
                                    style: TextButton.styleFrom(
                                        backgroundColor: SwiftColors.purple,
                                        fixedSize: Size(50, 55)),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Ajouter',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'montserrat-bold',
                                        color: Colors.white,
                                      ),
                                    ))),
                          ],
                        ),
                        const SizedBox(height: 40),
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
                        return ProductItemInProductList();
                      },
                      childCount: 8,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(height: 20),
                  )
                ],
              ))),
    );
  }
}
