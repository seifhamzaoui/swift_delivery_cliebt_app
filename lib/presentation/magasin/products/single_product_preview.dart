import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleProductPreview extends StatefulWidget {
  const SingleProductPreview({Key? key}) : super(key: key);

  @override
  State<SingleProductPreview> createState() => _SingleProductPreviewState();
}

class _SingleProductPreviewState extends State<SingleProductPreview> {
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
          height: showAllPanel ? 170 : 90,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                const BoxShadow(color: Colors.black, blurRadius: 1, spreadRadius: 0),
              ],
              borderRadius: !showAllPanel ? null : BorderRadius.vertical(top: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// separator gris
              if (showAllPanel) ...[
                const SizedBox(height: 10),
                const GreySeparator(),
                SizedBox(height: 10),
                // Combien?

                Text('Etes Vous sur de supprimer le produit?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          primary: SwiftColors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(color: SwiftColors.purple, width: 2),
                          ),
                          fixedSize: Size(158, 49)),
                      child: Text(
                        'Oui',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: Size(158, 49),
                        primary: Colors.white,
                        backgroundColor: SwiftColors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(color: SwiftColors.purple, width: 2),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Non',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ] else
                // button ajouter au panier et affichier le pris
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 20),
                    //affichage de prix
                    Expanded(
                        flex: 1,
                        child: PrimaryButton(
                            icon: Icon(
                              Icons.close,
                              size: 30,
                              color: Colors.white,
                            ),
                            backColor: SwiftColors.orange,
                            frontColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                showAllPanel = true;
                              });
                            },
                            text: 'delete')),
                    const SizedBox(width: 15),

                    // button d ajouter au panier
                    Expanded(
                      flex: 3,
                      child: PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {
                          // TODO : add to cart if productsNumber > 0 and panel opened
                        },
                        text: 'Modifier',
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
                    Text(
                      'Chicken Burger',
                      style: TextStyle(fontSize: 24, fontFamily: 'montserrat-bold'),
                    ),
                    Spacer(),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        const Text(
                          'Prix',
                          style: TextStyle(
                              color: SwiftColors.hintGreyColor,
                              fontSize: 14,
                              fontFamily: 'montserrat-bold'),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          '400 DA',
                          style: TextStyle(
                              color: SwiftColors.orange,
                              fontSize: 20,
                              fontFamily: 'montserrat-bold'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Divider(),
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
