// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/magasin/products/add_prduct_or_category/add_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';

class AddProductorCategory extends StatefulWidget {
  const AddProductorCategory({Key? key}) : super(key: key);

  @override
  State<AddProductorCategory> createState() => _AddProductorCategoryState();
}

class _AddProductorCategoryState extends State<AddProductorCategory> {
  List<String> types = ['Produit', 'Catégorie'];
  String choosed = 'Produit';
  bool isFirstTime = false;
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
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
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
                      fontSize: 30,
                      fontFamily: 'Montserrat-medium',
                      color: SwiftColors.purple,
                    )),
              ),
              const SizedBox(height: 75),
              if (!isProductForCategory)
                Text(
                  'Vous pouvez ajouter une catégorie ou un \nproduit selon votre activité',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat-semi-bold',
                  ),
                ),
              if (isProductForCategory) Text('Catégorie*'),
              const SizedBox(height: 10),
              if (isProductForCategory)
                Text(
                  'Burger',
                  style: TextStyle(
                    fontSize: 35,
                    color: SwiftColors.orange,
                  ),
                ),
              const SizedBox(height: 5),
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
              const SizedBox(height: 20),
              if (isFirstTime)
                Text(
                  'Type d\'élément*',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              const SizedBox(height: 20),
              if (isFirstTime)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.fromBorderSide(
                        BorderSide(color: Colors.black, width: 1.5),
                      )),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),
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
              const SizedBox(height: 20),
              Text(
                isFirstTime || isCategory ? 'Nom du Catégorie*' : 'Nom du produit*',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(hintText: 'Insérez le nom du votre produit'),
              const SizedBox(height: 20),
              Text(
                isFirstTime || isCategory ? 'Nom du Catégorie*' : 'Nom du produit*',
                style: TextStyle(
                  fontSize: 16,
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
                        size: 80,
                        color: SwiftColors.hintGreyColor,
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              if (isCategory)
                SizedBox(
                  height: 350,
                  child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisCount: 3,
                      scrollDirection: Axis.horizontal,
                      crossAxisSpacing: 20,
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
              const SizedBox(height: 20),
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
        height: 90,
        width: 90,
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
                      size: 15,
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
