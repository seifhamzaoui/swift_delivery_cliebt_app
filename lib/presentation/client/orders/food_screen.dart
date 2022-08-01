import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        bottomNavigationBar: Container(
          height: showAllPanel ? 300 : 90,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                const BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1),
              ],
              borderRadius: !showAllPanel ? null : BorderRadius.vertical(top: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// separator gris
              if (showAllPanel) const SizedBox(height: 20),
              if (showAllPanel) const GreySeparator(),
              if (showAllPanel) const SizedBox(height: 20),
              // Combien?
              if (showAllPanel)
                Text('combien?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              if (showAllPanel) const SizedBox(height: 40),
              // button d ajouter ou reduire nombre des produit
              if (showAllPanel)
                Container(
                  height: 80,
                  width: 220,
                  decoration: BoxDecoration(
                      color: Color(0xffE6E6E6), borderRadius: BorderRadius.circular(40)),
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
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
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
              Spacer(),
              // button ajouter au panier et affichier le pris
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20),
                  //affichage de prix
                  const Expanded(
                      flex: 1,
                      child: Text('400 da',
                          style: TextStyle(
                            fontSize: 20,
                            color: SwiftColors.orange,
                          ))),
                  const Spacer(flex: 1),
                  // button d ajouter au panier
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
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        body: SingleChildScrollView(
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
                            Icons.arrow_back_ios,
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
              SizedBox(height: 20),
              // information de produit
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chicken Burger',
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(height: 5),
                        Text('Livraison en 30 min',
                            style: TextStyle(color: SwiftColors.hintGreyColor)),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...List.generate(
                                4,
                                (index) => Image.asset(
                                      'assets/icons/yellow_star.png',
                                      color: SwiftColors.orange,
                                    )),
                            Image.asset(
                              'assets/icons/yellow_star.png',
                              color: SwiftColors.hintGreyColor,
                            ),
                            const SizedBox(width: 5),
                            Text('4', style: TextStyle(fontSize: 18))
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    //photo de magasin
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
              ),
              SizedBox(height: 20),
              // description de produit
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                        SizedBox(width: 5),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                showText = !showText;
                              });
                            },
                            child: const Text(
                              'affichier plus',
                              style: TextStyle(color: SwiftColors.orange),
                            )),
                      ],
                    ),
                  )),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
