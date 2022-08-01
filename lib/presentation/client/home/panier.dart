import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:flutter/material.dart';

class Panier extends StatelessWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //show Navbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Image.asset('assets/icons/menu.png'),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    Expanded(
                        child: Text(
                      'Panier',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: SwiftColors.purple),
                    )),
                    CustomIconButton(
                      icon: Image.asset('assets/icons/notification.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
                ...List.generate(3, (index) => [PanierElement(), SizedBox(height: 10)])
                    .expand((element) => element)
                    .toList(),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/icons/livraison_big.png'),
                        SizedBox(width: 22.5),
                        Text(
                          'Livraison',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          '200 DA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: SwiftColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: SwiftColors.hintGreyColor,
                          ),
                        ),
                        Text(
                          '1400 DA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: SwiftColors.orange,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: PrimaryButton(
                        backColor: SwiftColors.purple,
                        frontColor: Colors.white,
                        onPressed: () {},
                        text: 'valider',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PanierElement extends StatelessWidget {
  const PanierElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
                value: true,
                onChanged: (val) {},
                fillColor: MaterialStateProperty.all(SwiftColors.orange),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: const BorderSide(
                    color: SwiftColors.hintGreyColor,
                    width: 0,
                  ),
                )),
            // product image
            Container(
              height: 80,
              width: 88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  image: DecorationImage(image: AssetImage('assets/images/pizaa.png'))),
            ),
            // product Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Denny\'s ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: SwiftColors.purple,
                    )),
                const SizedBox(height: 5),
                Text('Pizza Poolet',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                const SizedBox(height: 5),
                Text(
                  '400 DA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: SwiftColors.orange,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: SwiftColors.purple,
                  foregroundColor: Colors.white,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 15),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Text('1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: SwiftColors.purple,
                    )),
                SizedBox(height: 5),
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.white,
                  foregroundColor: SwiftColors.purple,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove, size: 15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
