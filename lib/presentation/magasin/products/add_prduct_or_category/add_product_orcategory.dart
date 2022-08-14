// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/magasin/products/add_prduct_or_category/add_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductorCategory extends StatefulWidget {
  const AddProductorCategory({Key? key}) : super(key: key);

  @override
  State<AddProductorCategory> createState() => _AddProductorCategoryState();
}

class _AddProductorCategoryState extends State<AddProductorCategory> {
  List<String> types = ['Produit', 'Catégorie'];
  String choosed = 'Produit';
  bool isFirstTime = true;
  bool isProduct = false;
  bool isCategory = true;
  bool isProductForCategory = false;
  int categoryChoosed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                    isFirstTime
                        ? 'Ajouter un \nProduit ou une \nCatégorie'
                        : isProduct
                            ? 'AJOUTER UN \nPODUIT'
                            : 'AJOUTER UN \nCategorie',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'future-friends',
                      color: SwiftColors.purple,
                    )),
              ),
              SizedBox(height: 75.h),
              if (!isProductForCategory)
                Text(
                  'Vous pouvez ajouter une catégorie ou un \nproduit selon votre activité',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Montserrat-semi-bold',
                  ),
                ),
              if (isProductForCategory) Text('Catégorie*'),
              SizedBox(height: 10.h),
              if (isProductForCategory)
                Text(
                  'Burger',
                  style: TextStyle(
                    fontSize: 35.sp,
                    color: SwiftColors.orange,
                  ),
                ),
              SizedBox(height: 5.h),
              if (!isProductForCategory)
                Text(
                  isFirstTime
                      ? 'ex. catégorie : Burger \nex. produit : Chicken Burger'
                      : isProduct
                          ? 'ex. produit : Chicken Burger'
                          : isCategory
                              ? 'ex. catégorie : Burger'
                              : '',
                  style: TextStyle(color: SwiftColors.purple),
                ),
              SizedBox(height: 20.h),
              if (isFirstTime)
                Text(
                  'Type d\'élément*',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              SizedBox(height: 20.h),
              if (isFirstTime)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.fromBorderSide(
                        BorderSide(color: Colors.black, width: 1.5),
                      )),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10.w),
                    isExpanded: true,
                    underline: Container(),
                    value: choosed,
                    items: types
                        .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        choosed = val ?? choosed;
                      });
                    },
                  ),
                ),
              SizedBox(height: 20.h),
              Text(
                isFirstTime || isCategory ? 'Nom du Catégorie*' : 'Nom du produit*',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 20.h),
              CustomTextField(hintText: 'Insérez le nom du votre produit'),
              SizedBox(height: 20.h),
              Text(
                isFirstTime || isCategory ? 'Nom du Catégorie*' : 'Nom du produit*',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              if (isProduct)
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF4D0060).withOpacity(0.06),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 80.sp,
                        color: SwiftColors.hintGreyColor,
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 20.h),
              if (isCategory)
                SizedBox(
                  height: 350,
                  child: GridView.count(
                      mainAxisSpacing: 20.w,
                      crossAxisCount: 3,
                      scrollDirection: Axis.horizontal,
                      crossAxisSpacing: 20.h,
                      children: List.generate(
                        15,
                        (index) => ChooseProductCategoryChecked(
                          index: index,
                          indexChoosed: categoryChoosed,
                          onPressed: (index) {
                            setState(() {
                              categoryChoosed = index;
                            });
                          },
                        ),
                      ).toList()),
                ),
              SizedBox(height: 20.h),
              Align(
                child: PrimaryButton(
                  backColor: SwiftColors.purple,
                  frontColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      // TODO : add the add product or category screen
                      return AddProductDetails();
                    })));
                  },
                  text: 'Continuer',
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class ChooseProductCategoryChecked extends StatelessWidget {
  const ChooseProductCategoryChecked({
    Key? key,
    required this.index,
    required this.indexChoosed,
    required this.onPressed,
  }) : super(key: key);
  final int index;
  final int indexChoosed;
  final void Function(int index) onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: 90.w,
        width: 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.fromBorderSide(
              BorderSide(
                  width: 2, color: index == indexChoosed ? SwiftColors.purple : Colors.black),
            )),
        child: Stack(
          children: [
            if (index == indexChoosed)
              Positioned(
                  top: 5,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: SwiftColors.purple,
                    radius: 10,
                    child: Icon(
                      Icons.check,
                      size: 15.sp,
                      color: Colors.white,
                    ),
                  )),
            Center(
                child: Image.asset(
              'assets/icons/menu_items/tacos.png',
              scale: 0.8,
            )),
          ],
        ),
      ),
    );
  }
}
